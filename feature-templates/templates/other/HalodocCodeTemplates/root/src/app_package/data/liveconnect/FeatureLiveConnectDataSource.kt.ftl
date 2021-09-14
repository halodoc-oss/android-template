package ${escapeKotlinIdentifiers(packageName)}.data.liveconnect.source

import com.halodoc.androidcommons.liveconnectclient.LiveConnectProvider
import ${escapeKotlinIdentifiers(packageName)}.data.liveconnect.model.${featureName}Packet
import ${escapeKotlinIdentifiers(packageName)}.data.liveconnect.PendingChannelRegistry
import ${escapeKotlinIdentifiers(packageName)}.data.liveconnect.SubscriptionHandler
import ${escapeKotlinIdentifiers(packageName)}.data.liveconnect.LiveConnectMessageDelegate



class ${featureName}LiveConnectDataSource(private val pendingChannelRegistry: PendingChannelRegistry,
										  private val liveConnectProvider: LiveConnectProvider,
                            private val messageHandler: ${featureName}LiveConnectMessageHandler) :
                            SubscriptionHandler, LiveConnectMessageDelegate  {

    override fun registerToChannels(list: List<Channel>) {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }

    override fun onPacketReceived() {
        TODO("not implemented") //To change body of created functions use File | Settings | File Templates.
    }


}