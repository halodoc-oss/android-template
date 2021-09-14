package ${escapeKotlinIdentifiers(packageName)}.data.remote.network

import com.google.gson.FieldNamingPolicy
import com.google.gson.GsonBuilder
import com.linkdokter.halodoc.android.BuildConfig
import com.linkdokter.halodoc.android.network.HalodocBaseService
import okhttp3.OkHttpClient
import okhttp3.RequestBody
import retrofit2.Call
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import retrofit2.http.*
import ${escapeKotlinIdentifiers(packageName)}.data.remote.model.${featureName}Api

object ${featureName}NetworkService : HalodocBaseService<${featureName}NetworkService.${featureName}NetworkAPI>() {

    @JvmField var INSTANCE: ${featureName}NetworkAPI? = null

    @JvmStatic fun getInstance(): ${featureName}NetworkAPI {

        INSTANCE ?: synchronized(this) {
            INSTANCE = INSTANCE ?: ${featureName}NetworkService.newTransaction()
        }

        return INSTANCE as ${featureName}NetworkAPI
    }

    override fun getBaseApiUrl(): String {
        return BuildConfig.API_URL
    }

    override fun getService(okHttpClient: OkHttpClient): ${featureName}NetworkAPI {
        val gson = GsonBuilder().setFieldNamingPolicy(FieldNamingPolicy.LOWER_CASE_WITH_UNDERSCORES)
                .create()
        return Retrofit.Builder().baseUrl(baseApiUrl)
                .addConverterFactory(GsonConverterFactory.create(gson)).client(okHttpClient).build()
                .create<${featureName}NetworkAPI>(${featureName}NetworkAPI::class.java)
    }

    interface ${featureName}NetworkAPI {

        companion object {
            const val VERSION_V1 = "/v1"
        }

        @GET("$VERSION_V1/${featureName}")
        suspend fun get${featureName}(): ${featureName}Api

    }
}