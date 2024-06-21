package springboot.profpilot.model.Game.Team2.Defender;

import springboot.profpilot.model.Game.GameState;

import java.rmi.server.RMIClassLoader;
import java.rmi.server.RMIClassLoaderSpi;

public class Team2DefenderGameConditions {
    private GameState gameState;
    public Team2DefenderGameConditions(GameState gameState) {
        this.gameState = gameState;
    }
    public boolean isTeamWithBall(int team) {
        return gameState.getWho_has_ball() == team;
    }

    public boolean isOpponentCrossedMidLine() {
        double offender0X = gameState.getPlayer1_players().getPlayers().get(0).getPlayer_x();
        double midLineX = 5.5;

        if (gameState.getIsFirstHalf() == 1) {
            if (offender0X > midLineX) return true;
            else return false;
        } else {
            if (offender0X < midLineX)  return true;
            else return false;
        }
    }

    public boolean isPlayerNearOpponent(int playerIndex, double threshold) {
        if (gameState.getIsFirstHalf() == 1) {
            double offender1_x = gameState.getPlayer1_players().getPlayers().get(playerIndex).getPlayer_x();
            double offender1_y = gameState.getPlayer1_players().getPlayers().get(playerIndex).getPlayer_y();

            double player0_x = gameState.getPlayer2_players().getPlayers().get(playerIndex).getPlayer_x();
            double player0_y = gameState.getPlayer2_players().getPlayers().get(playerIndex).getPlayer_y();

            double distance = Math.sqrt(Math.pow(player0_x - offender1_x, 2) + Math.pow(player0_y - offender1_y, 2));
            return distance < threshold;
        } else {
            double offender1_x = gameState.getPlayer1_players().getPlayers().get(playerIndex).getPlayer_x();
            double offender1_y = gameState.getPlayer1_players().getPlayers().get(playerIndex).getPlayer_y();

            double player0_x = gameState.getPlayer2_players().getPlayers().get(playerIndex).getPlayer_x();
            double player0_y = gameState.getPlayer2_players().getPlayers().get(playerIndex).getPlayer_y();

            double distance = Math.sqrt(Math.pow(player0_x - offender1_x, 2) + Math.pow(player0_y - offender1_y, 2));
            return distance < threshold;
        }
    }
}