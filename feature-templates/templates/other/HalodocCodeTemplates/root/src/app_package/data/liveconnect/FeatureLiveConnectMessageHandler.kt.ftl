package ${escapeKotlinIdentifiers(packageName)}.data.liveconnect.source

import com.halodoc.liveconnect.callback.MessageHandler
import com.halodoc.liveconnect.core.model.Message
import com.halodoc.liveconnect.mqtt.model.LiveConnectMqttMessage
import ${escapeKotlinIdentifiers(packageName)}.data.liveconnect.LiveConnectMessageDelegate

class ${featureName}LiveConnectMessageHandler(private val parser: ${featureName}PacketParser) : MessageHandler {

    private lateinit var messageDelegate: LiveConnectMessageDelegate

    override fun canHandle(channel: String?): Boolean {
        return true
    }

    override fun handleMessage(channel: String?, message: Message) {
        val packet = parser.parse(message as LiveConnectMqttMessage)
        if (::messageDelegate.isInitialized) {
            messageDelegate.onPacketReceived()
        }

    }

    fun setMessageDelegate(delegate: LiveConnectMessageDelegate) {

        messageDelegate = delegate
    }
}