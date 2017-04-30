local MyAction = import '..utils.MyAction'
local MainScene = class("MainScene", cc.load("mvc").ViewBase)

function MainScene:onCreate()


    self.m_RootNode = cc.CSLoader:createNode("MainScene.csb")
    local ani = cc.CSLoader:createTimeline("MainScene.csb")
    ani:gotoFrameAndPlay(0, false)
    self.m_RootNode:runAction(ani)
    self:addChild(self.m_RootNode)
    local actionNode = self.m_RootNode:getChildByName("actionNode")
    actionNode:setVisible(false)
    local bgSpr = actionNode:getChildByName("bgSpr")


    local closeBtn = self.m_RootNode:getChildByName("closeBtn")
    closeBtn:addTouchEventListener( function(btn, event)
        if (event == ccui.TouchEventType.began) then
            MyAction:TipsClose(actionNode, function()
                actionNode:setVisible(false)
            end )
        end
    end )

    local runActionBtn = self.m_RootNode:getChildByName("runActionBtn")
    runActionBtn:addTouchEventListener( function(btn, event)
        if (event == ccui.TouchEventType.began) then
            MyAction:TipsOpen(actionNode)
            MyAction:blurShader(bgSpr)
        end
    end )

    local asset = gaf.GAFAsset:create("1.gaf")
    local obj = asset:createObjectAndRun(false)
    obj:setPosition(display.center)
    local flag = 0
    obj:setAnimationFinishedPlayDelegate(function()
        MyAction:deleteGaf(obj)
    end )

    self:addChild(obj)
    local assetwww = gaf.GAFAsset:create("1.gaf")
    local objjj = assetwww:createObjectAndRun(true)

    --    objjj:setAnimationStartedNextLoopDelegate(function()
    --        --  obj:setScale(1)
    --        --  obj:setLooped(false,true)
    --        --  obj:start()
    --    end)
    objjj:setPosition(cc.p(200, 200))
    self:addChild(objjj)

    ani:setLastFrameCallFunc( function()
        MyAction:TipsOpen(actionNode)
        MyAction:blurShader(bgSpr)
    end )
end

return MainScene