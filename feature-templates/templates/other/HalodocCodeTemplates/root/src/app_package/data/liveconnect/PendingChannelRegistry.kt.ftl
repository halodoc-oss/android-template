package ${escapeKotlinIdentifiers(packageName)}.data.liveconnect

import com.halodoc.liveconnect.core.DefaultEventListener
import com.halodoc.liveconnect.mqtt.model.LiveConnectMqttChannel
import timber.log.Timber

class PendingChannelRegistry : DefaultEventListener() {


    private lateinit var subscriptionHandler: SubscriptionHandler

    val pendingChannelToSubscribe: MutableSet<String> = mutableSetOf()

    fun setLiveConnectHandler(dataSource: SubscriptionHandler) {
        subscriptionHandler = dataSource
    }

    fun addToSubscribe(channel: String) {
        if (pendingChannelToSubscribe.contains(channel)) {
            Timber.d("topic is already in the pendingChannelToSubscribe")
        } else {
            Timber.d("topic is adding to pendingChannelToSubscribe")
            pendingChannelToSubscribe.add(channel)
        }
    }

    fun removeFromSubScribe(channel: String) {
        if (pendingChannelToSubscribe.contains(channel)) {
            pendingChannelToSubscribe.remove(channel)

        } else {
            Timber.d("topic is not present in the pendingChannelToSubscribe")
        }
    }

    override fun connectionSuccess() {
        super.connectionSuccess()
        if (::subscriptionHandler.isInitialized) {
            if (pendingChannelToSubscribe.isNotEmpty()) {
                val list = pendingChannelToSubscribe.map {
                    LiveConnectMqttChannel(it)
                }
                subscriptionHandler.registerToChannels(list)

            }
        }
    }
}