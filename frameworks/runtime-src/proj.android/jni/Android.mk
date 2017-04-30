LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := cocos2dlua_shared

LOCAL_MODULE_FILENAME := libcocos2dlua


# GAF_PATH := $(LOCAL_PATH)/../../../cocos2d-x/external/GAFPlayer/Library
# GAF_LUABINDING_PATH := $(LOCAL_PATH)/../../../cocos2d-x/external/GAFPlayer/lua_bindings

# define walk
#     $(wildcard $(1)) $(foreach e, $(wildcard $(1)/*), $(call walk, $(e)))
# endef
# ALLFILES = $(call walk, $(LOCAL_PATH)/../../Classes)
# FILE_LIST := \
# ../../Classes/AppDelegate.cpp \
# ../../Classes/ide-support/SimpleConfigParser.cpp \
# ../../Classes/ide-support/RuntimeLuaImpl.cpp \
# ../../Classes/ide-support/lua_debugger.c \
# hellolua/main.cpp
             
MY_CPP_LIST := $(wildcard $(LOCAL_PATH)/*.cpp)
MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/hellolua/*.cpp)
MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/../../Classes/*.cpp)
MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/../../Classes/ide-support/*.cpp)
MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/../../Classes/gafPlayer/luaBindings/*.cpp)
MY_CPP_LIST += $(wildcard $(LOCAL_PATH)/../../Classes/gafPlayer/*.cpp)
             #$(filter %.cpp, $(ALLFILES)) 

LOCAL_SRC_FILES := $(MY_CPP_LIST:$(LOCAL_PATH)/%=%)

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes
# _COCOS_HEADER_ANDROID_BEGIN
# _COCOS_HEADER_ANDROID_END

LOCAL_STATIC_LIBRARIES := cocos2d_lua_static
LOCAL_STATIC_LIBRARIES += cocos2d_simulator_static

# _COCOS_LIB_ANDROID_BEGIN
# _COCOS_LIB_ANDROID_END

include $(BUILD_SHARED_LIBRARY)

$(call import-module,scripting/lua-bindings/proj.android)
$(call import-module,tools/simulator/libsimulator/proj.android)

# _COCOS_LIB_IMPORT_ANDROID_BEGIN
# _COCOS_LIB_IMPORT_ANDROID_END
