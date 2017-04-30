local MyAction = class("MyAction")

function MyAction:ctor()

end

function MyAction:init()

end

function MyAction:getInstance()
    if self.instance == nil then
        self.instance = self:new()
    end
    return self.instance
end

local _OneFrame = 1 / 60

local _ScaleTo = function(time, scale)
    return cc.ScaleTo:create(time, scale)
end

local _CallBack = function(_func)
    return cc.CallFunc:create(_func)
end

local _Sequence = function(...)
    return cc.Sequence:create(...)
end

local _Spawn = function(...)
    return cc.Spawn:create(...)
end

local _FadeOut = function(time)
    return cc.FadeOut:create(time)
end

local _FadeIn = function(time)
    return cc.FadeIn:create(time)
end

local _Delay = function(time)
    return cc.DelayTime:create(time)
end


function MyAction:TipsOpen(_target)
    if (_target == nil) then return end
    local _tipsOpenSequence = cc.Sequence:create(
    _CallBack( function()
        _target:setVisible(false)
    end ),
    _Spawn(_ScaleTo(_OneFrame, .1), _FadeOut(_OneFrame)),
    _CallBack( function()
        _target:setVisible(true)
    end ),
    _ScaleTo(.15, 1.1),
    _ScaleTo(.1, .9),
    _ScaleTo(.1, 1.0),
    nil)

    _target:runAction(_tipsOpenSequence)
end

function MyAction:TipsClose(_target, _func)
    if (_target == nil) then return end
    local _tipsCloseSequence = cc.Sequence:create(
    _ScaleTo(.1, .9),
    _ScaleTo(.1, 1.1),
    _ScaleTo(.15, .01),
    _CallBack(_func),
    nil)

    _target:runAction(_tipsCloseSequence)
end
function MyAction:Shock(_target)
    local _tipsOpenSequence = cc.Sequence:create(
    _ScaleTo(.1, .9),
    _ScaleTo(.1, 1.1),
    _ScaleTo(.2, .01),
    _CallBack(func),
    nil)

    _target:runAction(_shockSequence)
end
local vsh = [[
     attribute vec4 a_position;
            attribute vec2 a_texCoord;
        attribute vec4 a_color;
        varying vec2 v_texCoord;
        void main() {
            gl_Position = CC_PMatrix * a_position;
            v_texCoord = a_texCoord;
        }
     ]]
local fsh = [[
        varying vec2 v_texCoord;
        uniform vec2 u_resolution;
        uniform float u_blurRadius;

        void main(void) {
            if (u_blurRadius > 0.0) {
                vec4 col = vec4(0.0);
                vec2 unit = 1.0 / u_resolution.xy;
                float sampleStep = u_blurRadius * 0.2;
                float count = 0.0;
                for (float x = -u_blurRadius; x < u_blurRadius; x += sampleStep) {
                    for (float y = -u_blurRadius; y < u_blurRadius; y += sampleStep) {
                        float weight = (u_blurRadius - abs(x)) * (u_blurRadius - abs(y));
                        col += texture2D(CC_Texture0, v_texCoord + vec2(x * unit.x, y * unit.y)) * weight;
                        count += weight;
                    }
                }

                gl_FragColor = col / count;
                gl_FragColor.a = 1.0;
            } else {
                gl_FragColor = texture2D(CC_Texture0, v_texCoord);
            }
        }
        ]]
function MyAction:blurShader(sprite)
    local pProgram = cc.GLProgram:createWithByteArrays(vsh, fsh)

    pProgram:bindAttribLocation(cc.ATTRIBUTE_NAME_POSITION, cc.VERTEX_ATTRIB_POSITION)
    pProgram:bindAttribLocation(cc.ATTRIBUTE_NAME_COLOR, cc.VERTEX_ATTRIB_COLOR)
    pProgram:bindAttribLocation(cc.ATTRIBUTE_NAME_TEX_COORD, cc.VERTEX_ATTRIB_FLAG_TEX_COORDS)
    pProgram:link()
    pProgram:updateUniforms()
    sprite:setGLProgram(pProgram)
    local __programState = cc.GLProgramState:getOrCreateWithGLProgram(pProgram)
    __programState:setUniformVec2("u_resolution", cc.p(1280, 720));
    __programState:setUniformFloat("u_blurRadius", 30);
    sprite:setGLProgramState(__programState);
end  
function MyAction:deleteGaf(gafObj)
    gafObj:setVisible(false)
    gafObj:runAction(_Sequence(
    _Delay(_OneFrame),
    _CallBack( function(gafObj)
        gafObj:removeFromParent()
    end )))
end

return MyAction