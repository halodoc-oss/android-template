<?xml version="1.0"?>

<recipe>

    <instantiate from="src/app_package/domain/FeatureDomainModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/domain/model/${featureName}.kt" />
    <instantiate from="src/app_package/domain/FeatureRepository.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/domain/${featureName}Repository.kt" />

	   <instantiate from="src/app_package/data/FeatureDataRepository.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/data/${featureName}DataRepository.kt" />

     <instantiate from="src/app_package/data/remote/FeatureRemoteDataSource.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/data/remote/source/${featureName}RemoteDataSource.kt" />

     <instantiate from="src/app_package/data/remote/FeatureApi.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/data/remote/model/${featureName}Api.kt" />

     <instantiate from="src/app_package/data/remote/FeatureNetworkService.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/data/remote/network/${featureName}NetworkService.kt" />

    <#if containsLocalDataSource>
    	<instantiate from="src/app_package/data/local/FeatureLocalDataSource.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/data/local/source/${featureName}LocalDataSource.kt" />
      <instantiate from="src/app_package/data/local/FeatureEntity.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/data/local/model/${featureName}Entity.kt" />
	  </#if>

    <#if containsLiveConnectSource>
      <instantiate from="src/app_package/data/liveconnect/LiveConnectMessageDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/data/liveconnect/LiveConnectMessageDelegate.kt" />
      <instantiate from="src/app_package/data/liveconnect/PendingChannelRegistry.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/data/liveconnect/PendingChannelRegistry.kt" />
      <instantiate from="src/app_package/data/liveconnect/SubscriptionHandler.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/data/liveconnect/SubscriptionHandler.kt" />

      <instantiate from="src/app_package/data/liveconnect/FeatureLiveConnectMessageHandler.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/data/liveconnect/source/${featureName}LiveConnectMessageHandler.kt" />

      <instantiate from="src/app_package/data/liveconnect/FeaturePacket.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/data/liveconnect/model/${featureName}Packet.kt" />

      <instantiate from="src/app_package/data/liveconnect/FeaturePacketParser.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/data/liveconnect/source/${featureName}PacketParser.kt" />

      <instantiate from="src/app_package/data/liveconnect/FeatureLiveConnectDataSource.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/data/liveconnect/source/${featureName}LiveConnectDataSource.kt"/>
      
    </#if>


    <instantiate from="src/app_package/presentation/FeatureViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/viewmodel/${featureName}ViewModel.kt" />
    <instantiate from="src/app_package/presentation/FeatureViewModelFactory.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/viewmodel/${featureName}ViewModelFactory.kt" />
    <instantiate from="src/app_package/presentation/FeatureFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/presentation/ui/${featureName}Fragment.kt" />

    <open file="${srcOut}/${featureName}Repository.kt"/>
    <open file="${srcOut}//data/remote/network/${featureName}NetworkService.kt"/>




</recipe>
