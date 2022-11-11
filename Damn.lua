shared.Executed
repeat task.wait() until game:IsLoaded
game.Players.LocalPlayer.Character.Humanoid.Health = 0
if shared.private then
print("private test")
end
