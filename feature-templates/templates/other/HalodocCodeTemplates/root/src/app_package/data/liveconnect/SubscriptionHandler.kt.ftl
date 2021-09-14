package ${escapeKotlinIdentifiers(packageName)}.data.liveconnect

import com.halodoc.liveconnect.core.model.Channel

interface SubscriptionHandler {

    fun registerToChannels(list: List<Channel>)
}