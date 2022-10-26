//-----------------------------------------------------------------------------
//
//                   ** WARNING! ** 
//    This file was generated automatically by a tool.
//    Re-running the tool will overwrite this file.
//    You should copy this file to a custom location
//    before adding any customization in the copy to
//    prevent loss of your changes when the tool is
//    re-run.
//
//-----------------------------------------------------------------------------

#ifndef NF_TWAI_NF_TWAI_NF_TWAI_TWAI_H
#define NF_TWAI_NF_TWAI_NF_TWAI_TWAI_H

#include "driver/twai.h"

namespace NF_TWAI
{
    namespace NF_TWAI
    {
        struct TWAI
        {
            // Helper Functions to access fields of managed object
            // Declaration of stubs. These functions are implemented by Interop code developers

            static signed int NativeTwaiInstall(  HRESULT &hr );

            static signed int NativeTwaiUninstall(  HRESULT &hr );

            static signed int NativeTwaiStart(  HRESULT &hr );

            static signed int NativeTwaiStop(  HRESULT &hr );

            static signed int NativeTwaiX(  HRESULT &hr );

            static signed int NativeTwaiY(  HRESULT &hr );

        };
    }
}

#endif // NF_TWAI_NF_TWAI_NF_TWAI_TWAI_H
