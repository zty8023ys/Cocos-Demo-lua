local ActionController = class("ActionController")

function ActionController:ctor()

end

function ActionController:init()

end

function ActionController:Instance()
    if self.instance == nil then
        self.instance = self:new()
    end
    return self.instance
end

local _OneFrame = 1 / 60
local _ScaleTo = function(time, scale)
    return cc.Scale:create(time, scale)
end

local _Spawn = function (...)
    return cc.Spawn:create(...)
end



local MoveTo = function(time, pos)
    return cc.MoveTo:create(time, pos)
end

local FadeOut = function(time)
    return cc.FadeOut:create(time)
end
local FadeIn = function(time)
    return cc.FadeIn:create(time)
end


function ActionController:TipsOpen(tips)

    local _tipsOpenSequence = cc.Sequence:create(
        tips:setVisible(false),
        _Spawn(_ScaleTo(_OneFrame, 0.1),FadeOut(_OneFrame)),
        tips:setVisible(true),
        _Spawn(_ScaleTo(0.2, 1.1),FadeIn(0.2)),
        _ScaleTo(0.1,1),
        nil)

    tips:runAction(_tipsOpenSequence)
end
return ActionController