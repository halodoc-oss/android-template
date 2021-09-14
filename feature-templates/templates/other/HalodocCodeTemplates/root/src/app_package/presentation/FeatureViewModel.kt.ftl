package ${escapeKotlinIdentifiers(packageName)}.presentation.viewmodel

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.halodoc.androidcommons.arch.AppCoroutineContextProvider
import com.halodoc.androidcommons.arch.CoroutineContextProvider
import ${escapeKotlinIdentifiers(packageName)}.domain.${featureName}Repository

class ${featureName}ViewModel(private val repository : ${featureName}Repository,
							  private val contextProvider: CoroutineContextProvider = AppCoroutineContextProvider) : ViewModel() {


	fun fetch${featureName}() {
		launch(contextProvider.IO){
		}	
	}

}