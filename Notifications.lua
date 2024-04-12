local module = {}
		
		function module.Init()
		
			local Notification = Instance.new("ScreenGui")
			local NotificationFrames = Instance.new("Frame")
			local UIListLayout = Instance.new("UIListLayout")
		
			Notification.Name = "Notification"
			Notification.Parent = game.CoreGui -- Change to coregui when release
		
			NotificationFrames.Name = "NotificationFrames"
			NotificationFrames.Parent = Notification
			NotificationFrames.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			NotificationFrames.BackgroundTransparency = 1.000
			NotificationFrames.BorderColor3 = Color3.fromRGB(0, 0, 0)
			NotificationFrames.BorderSizePixel = 0
			NotificationFrames.Position = UDim2.new(0.822776735, 0, 0.439490438, 0)
			NotificationFrames.Size = UDim2.new(0.176742345, 0, 0.560509562, 0)
		
			UIListLayout.Parent = NotificationFrames
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Right
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
			UIListLayout.Padding = UDim.new(0.0199999996, 0)
		
		end
		
		function module.Notify(Title:string, Description:string, Urgency:number)
		
			local Notification = Instance.new("Frame")
			local TitleLabel = Instance.new("TextLabel")
			local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
			local UrgencyLabel = Instance.new("Frame")
			local DescriptionLabel = Instance.new("TextLabel")
			local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
		
			if Urgency == 3 then
				UrgencyLabel.BackgroundColor3 = Color3.fromRGB(241, 33, 37)
			elseif Urgency == 2 then
				UrgencyLabel.BackgroundColor3 = Color3.fromRGB(245, 141, 23)
			elseif Urgency == 1 then
				UrgencyLabel.BackgroundColor3 = Color3.fromRGB(108, 255, 10)	
			else
				UrgencyLabel.BackgroundColor3 = Color3.fromRGB(149, 149, 149)
			end
		
		
			Notification.Name = "Notification"
			Notification.Parent = game.CoreGui:WaitForChild("Notification"):FindFirstChild("NotificationFrames") -- Change to coregui when release
			Notification.BackgroundColor3 = Color3.fromRGB(71, 69, 68)
			Notification.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Notification.BorderSizePixel = 0
			Notification.Position = UDim2.new(1,0,0.853,0)
			Notification.Size = UDim2.new(0.823, 0,0.212, 0)
		
			TitleLabel.Name = "Title"
			TitleLabel.Parent = Notification
			TitleLabel.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
			TitleLabel.BorderColor3 = Color3.fromRGB(170, 170, 170)
			TitleLabel.BorderSizePixel = 0
			TitleLabel.Position = UDim2.new(0.0195039753, 0, -0.000944382453, 0)
			TitleLabel.Size = UDim2.new(0.980496526, 0, 0.25316453, 0)
			TitleLabel.Font = Enum.Font.SciFi
			TitleLabel.Text = Title
			TitleLabel.TextColor3 = Color3.fromRGB(197, 191, 188)
			TitleLabel.TextScaled = true
			TitleLabel.TextSize = 14.000
			TitleLabel.TextWrapped = true
		
			UrgencyLabel.Name = "Urgency"
			UrgencyLabel.Parent = Notification
			UrgencyLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
			UrgencyLabel.BorderSizePixel = 0
			UrgencyLabel.Position = UDim2.new(0.0195034668, 0, 1.00771523, 0)
			UrgencyLabel.Size = UDim2.new(-0.0199999996, 0, -1.00866091, 0)
		
			DescriptionLabel.Name = "Description"
			DescriptionLabel.Parent = Notification
			DescriptionLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DescriptionLabel.BackgroundTransparency = 1.000
			DescriptionLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
			DescriptionLabel.BorderSizePixel = 0
			DescriptionLabel.Position = UDim2.new(0.0195039753, 0, 0.252220064, 0)
			DescriptionLabel.Size = UDim2.new(0.979788244, 0, 0.742096782, 0)
			DescriptionLabel.Font = Enum.Font.SciFi
			DescriptionLabel.Text = Description
			DescriptionLabel.TextColor3 = Color3.fromRGB(197, 191, 188)
			DescriptionLabel.TextScaled = true
			DescriptionLabel.TextSize = 30.000
			DescriptionLabel.TextWrapped = true
			DescriptionLabel.TextXAlignment = Enum.TextXAlignment.Left
			DescriptionLabel.TextYAlignment = Enum.TextYAlignment.Top
		
			UITextSizeConstraint.Parent = TitleLabel
			UITextSizeConstraint_2.Parent = DescriptionLabel
			UITextSizeConstraint.MaxTextSize = 20
			UITextSizeConstraint_2.MaxTextSize = 30
		
			wait(2)
			Notification:Destroy()
		end
		
		
		return module
	end
