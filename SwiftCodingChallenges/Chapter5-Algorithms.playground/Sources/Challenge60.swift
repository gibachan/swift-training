import Foundation

// -----------------------------------------------------------------------------
// Tic-Tac-Toe winner
// -----------------------------------------------------------------------------
// Create a function that detects whether either player has won in a game of Tic-Tac-Toe.
//
// Tip: A tic-tac-toe board is 3x3, containing single letters that are either X, O, or empty.
// A win is three Xs or Os in a straight line.
// -----------------------------------------------------------------------------

public func challenge60a(_ board: [[String]]) -> Bool {
    for i in 0 ..< 3 {
        // check each row
        if board[i][0] != "" && board[i][0] == board[i][1] && board[i][0] == board[i][2] {
            return true
        }
        
        // check each column
        if board[0][i] != "" && board[0][i] == board[1][i] && board[0][i] == board[2][i] {
            return true
        }
        
    }
    
    // check diagonally top left to bottom right
    if board[0][0] != "" && board[0][0] == board[1][1] && board[0][0] == board[2][2] {
        return true
    }
    
    // check diagonally bottom left to top right
    if board[0][2] != "" && board[0][2] == board[1][1] && board[0][2] == board[2][0] {
        return true
    }
    
    return false
}


public func challenge60b(_ board: [[String]]) -> Bool {
    func isWin(_ first: String, _ second: String, _ third: String) -> Bool {
        guard first != "" else { return false }
        return first == second && first == third
    }
    
    for i in 0 ..< 3 {
        // check each row
        if isWin(board[i][0], board[i][1], board[i][2]) {
            return true
        }
        
        // check each column
        if isWin(board[0][i], board[1][i], board[2][i]) {
            return true
        }
    }
    
    
    // check diagonally top left to bottom right
    if isWin(board[0][0], board[1][1], board[2][2]) {
        return true
    }
    
    // check diagonally bottom left to top right
    if isWin(board[0][2], board[1][1], board[2][0]) {
        return true
    }
    
    return false
}
