package ${escapeKotlinIdentifiers(packageName)}.presentation.viewmodel

import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import ${escapeKotlinIdentifiers(packageName)}.domain.${featureName}Repository
import ${escapeKotlinIdentifiers(packageName)}.presentation.viewmodel.${featureName}ViewModel

class ${featureName}ViewModelFactory(private val repository: ${featureName}Repository) :
        ViewModelProvider.Factory {

    override fun <T : ViewModel?> create(modelClass: Class<T>): T {
        return when {
            modelClass.isAssignableFrom(${featureName}ViewModel::class.java) ->
                ${featureName}ViewModel(repository) as T
            else -> throw IllegalArgumentException("Unknown ViewModel class")
        }
    }
}