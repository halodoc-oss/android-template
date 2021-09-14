#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.halodoc.androidcommons.arch.AppCoroutineContextProvider
import com.halodoc.androidcommons.arch.CoroutineContextProvider
import kotlinx.coroutines.launch

class ${VIEW_MODEL_NAME}(private val contextProvider: CoroutineContextProvider = AppCoroutineContextProvider) : ViewModel() {


	fun fetch() {
		viewModelScope.launch(contextProvider.IO){
		}	
	}

}