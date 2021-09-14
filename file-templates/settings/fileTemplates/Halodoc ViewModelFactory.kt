#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end

import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider

class ${VIEW_MODEL_FACTORY_NAME}() : ViewModelProvider.Factory {

    override fun <T : ViewModel?> create(modelClass: Class<T>): T {
        return when {
            modelClass.isAssignableFrom(${VIEW_MODEL_NAME}::class.java) ->
                ${VIEW_MODEL_NAME}() as T
            else -> throw IllegalArgumentException("Unknown ViewModel class")
        }
    }
}