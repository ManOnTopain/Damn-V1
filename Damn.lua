shared.Executed

repeat task.wait(0.1) until game:IsLoaded
repeat task.wait() until shared.Executed
if shared.private then
print("test")
end
game.Players.LocalPlayer.Character.Humanoid.Health = 0
