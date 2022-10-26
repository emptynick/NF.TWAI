using System;
using System.Runtime.CompilerServices;

using nanoFramework.Hardware.Esp32;

namespace NF.TWAI
{
    public class TWAI
    {
        /// Install TWAI driver.
        public EspNativeError Install () {
            return (EspNativeError)NativeTwaiInstall();
        }

        /// Uninstall TWAI driver.
        public EspNativeError Uninstall () {
            NativeTwaiX();
            NativeTwaiY();
            return (EspNativeError)NativeTwaiUninstall();
        }

        /// Start TWAI driver.
        public EspNativeError Start () {
            return (EspNativeError)NativeTwaiStart();
        }

        /// Stop TWAI driver.
        public EspNativeError Stop () {
            return (EspNativeError)NativeTwaiStop();
        }

        #region Fields


        #endregion

        #region Stubs

        [MethodImplAttribute(MethodImplOptions.InternalCall)]
        private static extern Int32 NativeTwaiInstall();

        [MethodImplAttribute(MethodImplOptions.InternalCall)]
        private static extern Int32 NativeTwaiUninstall();

        [MethodImplAttribute(MethodImplOptions.InternalCall)]
        private static extern Int32 NativeTwaiStart();

        [MethodImplAttribute(MethodImplOptions.InternalCall)]
        private static extern Int32 NativeTwaiStop ();

        [MethodImplAttribute(MethodImplOptions.InternalCall)]
        private static extern Int32 NativeTwaiX ();

        [MethodImplAttribute(MethodImplOptions.InternalCall)]
        private static extern Int32 NativeTwaiY ();

        #endregion stubs
    }

    public enum TWAIMode : Int32 {
        TWAI_MODE_NORMAL,      /* Normal operating mode where TWAI controller can send/receive/acknowledge messages */
        TWAI_MODE_NO_ACK,      /* Transmission does not require acknowledgment. Use this mode for self testing */
        TWAI_MODE_LISTEN_ONLY,
    }
}
