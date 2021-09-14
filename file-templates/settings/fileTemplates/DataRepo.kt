package ${PACKAGE_NAME}

import ${ARG_TYPE_1}

class ${CLASS_NAME}(val dataSource : ${ARG_TYPE_1}) : ${INTERFACE_NAME} {

    companion object {
        @Volatile
        var INSTANCE: ${CLASS_NAME}? = null

        fun getInstance(dataSource: ${ARG_TYPE_1}): ${CLASS_NAME} {
            INSTANCE ?: synchronized(this) {
                INSTANCE = INSTANCE ?: ${CLASS_NAME}(dataSource)
            }

            return INSTANCE as  ${CLASS_NAME}
        }
    }
}