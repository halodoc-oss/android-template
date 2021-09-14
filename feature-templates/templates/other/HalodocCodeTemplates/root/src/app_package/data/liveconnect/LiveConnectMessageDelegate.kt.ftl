package ${escapeKotlinIdentifiers(packageName)}.data.liveconnect



interface LiveConnectMessageDelegate {

    fun onPacketReceived()
}