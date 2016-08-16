#include "hello_world_impl.hpp"
#include "sandbox_manager.hpp"
#include <string>

namespace helloworld {
    
    static std::shared_ptr<SandboxManager> staticSandboxManager = nullptr;
    
    std::shared_ptr<HelloWorld> HelloWorld::create() {
        return std::make_shared<HelloWorldImpl>();
    }
    
    std::shared_ptr<HelloWorld> HelloWorld::createWithSandboxManager(const std::shared_ptr<SandboxManager> & sandboxManager) {
        staticSandboxManager = sandboxManager;
        
        return std::make_shared<HelloWorldImpl>();
    }
    
    HelloWorldImpl::HelloWorldImpl() {

    }
    
    std::string HelloWorldImpl::get_hello_world() {
        
        std::string myString = "Hello Gliphjkghjkghjkghjkgjk!   -  ";
        
        time_t t = time(0);
        tm now=*localtime(&t);
        char tmdescr[200]={0};
        const char fmt[]="%r";
        if (strftime(tmdescr, sizeof(tmdescr)-1, fmt, &now)>0) {
            myString += tmdescr;
        }
        
        return myString + " from C++";
        
    }

    std::string HelloWorldImpl::get_sandbox_path() {
        return staticSandboxManager->get_sandbox_path() + " from C++";
    }
}
