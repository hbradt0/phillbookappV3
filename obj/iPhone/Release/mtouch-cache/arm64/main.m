extern "C" void xamarin_create_classes();

static void xamarin_invoke_registration_methods ()
{
	xamarin_create_classes();
}

#include "xamarin/xamarin.h"

extern void *mono_aot_module_Hello_MultiScreen_iPhone_info;
extern void *mono_aot_module_mscorlib_info;
extern void *mono_aot_module_Xamarin_iOS_info;
extern void *mono_aot_module_System_info;
extern void *mono_aot_module_Mono_Security_info;
extern void *mono_aot_module_System_Xml_info;
extern void *mono_aot_module_System_Numerics_info;
extern void *mono_aot_module_System_Core_info;
extern void *mono_aot_module_System_Net_Http_info;
extern void *mono_aot_module_System_Drawing_Common_info;
extern void *mono_aot_module_Microsoft_Azure_Storage_Blob_info;
extern void *mono_aot_module_System_Data_info;
extern void *mono_aot_module_System_Runtime_Serialization_info;
extern void *mono_aot_module_System_Web_Services_info;
extern void *mono_aot_module_System_Xml_Linq_info;
extern void *mono_aot_module_Microsoft_Azure_Storage_Common_info;
extern void *mono_aot_module_Newtonsoft_Json_info;
extern void *mono_aot_module_Microsoft_CSharp_info;
extern void *mono_aot_module_Microsoft_Azure_KeyVault_Core_info;
extern void *mono_aot_module_Plugin_Connectivity_info;
extern void *mono_aot_module_Plugin_Connectivity_Abstractions_info;

void xamarin_register_modules_impl ()
{
	mono_aot_register_module (mono_aot_module_Hello_MultiScreen_iPhone_info);
	mono_aot_register_module (mono_aot_module_mscorlib_info);
	mono_aot_register_module (mono_aot_module_Xamarin_iOS_info);
	mono_aot_register_module (mono_aot_module_System_info);
	mono_aot_register_module (mono_aot_module_Mono_Security_info);
	mono_aot_register_module (mono_aot_module_System_Xml_info);
	mono_aot_register_module (mono_aot_module_System_Numerics_info);
	mono_aot_register_module (mono_aot_module_System_Core_info);
	mono_aot_register_module (mono_aot_module_System_Net_Http_info);
	mono_aot_register_module (mono_aot_module_System_Drawing_Common_info);
	mono_aot_register_module (mono_aot_module_Microsoft_Azure_Storage_Blob_info);
	mono_aot_register_module (mono_aot_module_System_Data_info);
	mono_aot_register_module (mono_aot_module_System_Runtime_Serialization_info);
	mono_aot_register_module (mono_aot_module_System_Web_Services_info);
	mono_aot_register_module (mono_aot_module_System_Xml_Linq_info);
	mono_aot_register_module (mono_aot_module_Microsoft_Azure_Storage_Common_info);
	mono_aot_register_module (mono_aot_module_Newtonsoft_Json_info);
	mono_aot_register_module (mono_aot_module_Microsoft_CSharp_info);
	mono_aot_register_module (mono_aot_module_Microsoft_Azure_KeyVault_Core_info);
	mono_aot_register_module (mono_aot_module_Plugin_Connectivity_info);
	mono_aot_register_module (mono_aot_module_Plugin_Connectivity_Abstractions_info);

}

void xamarin_register_assemblies_impl ()
{
	GCHandle exception_gchandle = INVALID_GCHANDLE;

}

void xamarin_setup_impl ()
{
	mono_jit_set_aot_mode (MONO_AOT_MODE_FULL);
	xamarin_invoke_registration_methods ();

	mono_dllmap_insert (NULL, "System.Native", NULL, "__Internal", NULL);
	mono_dllmap_insert (NULL, "System.Security.Cryptography.Native.Apple", NULL, "__Internal", NULL);
	mono_dllmap_insert (NULL, "System.Net.Security.Native", NULL, "__Internal", NULL);

	xamarin_init_mono_debug = FALSE;
	xamarin_executable_name = "Hello_MultiScreen_iPhone.exe";
	mono_use_llvm = FALSE;
	xamarin_log_level = 0;
	xamarin_arch_name = "arm64";
	xamarin_marshal_objectivec_exception_mode = MarshalObjectiveCExceptionModeDisable;
	setenv ("MONO_GC_PARAMS", "nursery-size=512k,major=marksweep", 1);
	xamarin_supports_dynamic_registration = FALSE;
}

int main (int argc, char **argv)
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	int rv = xamarin_main (argc, argv, XamarinLaunchModeApp);
	[pool drain];
	return rv;
}

void xamarin_initialize_callbacks () __attribute__ ((constructor));
void xamarin_initialize_callbacks ()
{
	xamarin_setup = xamarin_setup_impl;
	xamarin_register_assemblies = xamarin_register_assemblies_impl;
	xamarin_register_modules = xamarin_register_modules_impl;
}
