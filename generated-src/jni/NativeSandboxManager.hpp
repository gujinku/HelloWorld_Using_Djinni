// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from helloworld.djinni

#pragma once

#include "djinni_support.hpp"
#include "sandbox_manager.hpp"

namespace djinni_generated {

class NativeSandboxManager final : ::djinni::JniInterface<::helloworld::SandboxManager, NativeSandboxManager> {
public:
    using CppType = std::shared_ptr<::helloworld::SandboxManager>;
    using CppOptType = std::shared_ptr<::helloworld::SandboxManager>;
    using JniType = jobject;

    using Boxed = NativeSandboxManager;

    ~NativeSandboxManager();

    static CppType toCpp(JNIEnv* jniEnv, JniType j) { return ::djinni::JniClass<NativeSandboxManager>::get()._fromJava(jniEnv, j); }
    static ::djinni::LocalRef<JniType> fromCppOpt(JNIEnv* jniEnv, const CppOptType& c) { return {jniEnv, ::djinni::JniClass<NativeSandboxManager>::get()._toJava(jniEnv, c)}; }
    static ::djinni::LocalRef<JniType> fromCpp(JNIEnv* jniEnv, const CppType& c) { return fromCppOpt(jniEnv, c); }

private:
    NativeSandboxManager();
    friend ::djinni::JniClass<NativeSandboxManager>;
    friend ::djinni::JniInterface<::helloworld::SandboxManager, NativeSandboxManager>;

    class JavaProxy final : ::djinni::JavaProxyHandle<JavaProxy>, public ::helloworld::SandboxManager
    {
    public:
        JavaProxy(JniType j);
        ~JavaProxy();

        std::string get_sandbox_path() override;

    private:
        friend ::djinni::JniInterface<::helloworld::SandboxManager, ::djinni_generated::NativeSandboxManager>;
    };

    const ::djinni::GlobalRef<jclass> clazz { ::djinni::jniFindClass("com/ringcentral/helloworld/SandboxManager") };
    const jmethodID method_getSandboxPath { ::djinni::jniGetMethodID(clazz.get(), "getSandboxPath", "()Ljava/lang/String;") };
};

}  // namespace djinni_generated