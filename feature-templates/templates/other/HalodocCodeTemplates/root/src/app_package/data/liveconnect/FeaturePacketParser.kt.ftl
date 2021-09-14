package ${escapeKotlinIdentifiers(packageName)}.data.liveconnect.source


import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import com.halodoc.liveconnect.mqtt.model.LiveConnectMqttMessage
import ${escapeKotlinIdentifiers(packageName)}.data.liveconnect.model.${featureName}Packet

class ${featureName}PacketParser(private val gson: Gson) {

    fun parse(message: LiveConnectMqttMessage): ${featureName}Packet {

        val payload = message.payload
        return ${featureName}Packet(false)
    }
}