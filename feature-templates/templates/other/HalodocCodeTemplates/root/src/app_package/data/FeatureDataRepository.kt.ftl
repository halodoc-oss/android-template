package ${escapeKotlinIdentifiers(packageName)}.data

import ${escapeKotlinIdentifiers(packageName)}.domain.${featureName}Repository
import ${escapeKotlinIdentifiers(packageName)}.data.remote.source.${featureName}RemoteDataSource



class ${featureName}DataRepository(private val remoteDataSource : ${featureName}RemoteDataSource) 
:  ${featureName}Repository {


}
