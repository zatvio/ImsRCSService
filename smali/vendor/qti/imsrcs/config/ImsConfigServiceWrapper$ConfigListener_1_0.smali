.class Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;
.super Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;
.source "ImsConfigServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigListener_1_0"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;


# direct methods
.method private constructor <init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-direct {p0}, Lvendor/qti/ims/configservice/V1_0/IConfigServiceListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;
    .param p2, "x1"    # Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;

    .line 488
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onRcsServiceStatusUpdate$1$vendor-qti-imsrcs-config-ImsConfigServiceWrapper$ConfigListener_1_0(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 571
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$900(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$900(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;->onRcsStatusReceived(Z)V

    goto :goto_0

    .line 574
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRcsStatusReceived received rcsStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 575
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 574
    const-string v1, "ImsConfigServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :goto_0
    return-void
.end method

.method synthetic lambda$onUceStatusUpdate$0$vendor-qti-imsrcs-config-ImsConfigServiceWrapper$ConfigListener_1_0(Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)V
    .locals 2
    .param p1, "uceCapabilityInfo"    # Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;

    .line 545
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$1000(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$1000(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    move-result-object v0

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v1, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$1100(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;->onUceConfigStatusReceived(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    goto :goto_0

    .line 548
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUceConfigStatusReceived received presenceStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isPresenceEnabled:Z

    .line 549
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "optionsStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isOptionsEnabled:Z

    .line 550
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    const-string v1, "ImsConfigServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :goto_0
    return-void
.end method

.method public onAutoConfigErrorSipResponse(Lvendor/qti/ims/configservice/V1_0/AutoConfigResponse;)V
    .locals 1
    .param p1, "autoConfigResponse"    # Lvendor/qti/ims/configservice/V1_0/AutoConfigResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 588
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->handleAutoConfigErrorCb(Lvendor/qti/ims/configservice/V1_0/AutoConfigResponse;)V

    .line 591
    :cond_0
    return-void
.end method

.method public onAutoConfigurationReceived(Lvendor/qti/ims/configservice/V1_0/AutoConfig;)V
    .locals 1
    .param p1, "autoConfig"    # Lvendor/qti/ims/configservice/V1_0/AutoConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->handleAutoConfigReceived(Lvendor/qti/ims/configservice/V1_0/AutoConfig;)V

    .line 519
    :cond_0
    return-void
.end method

.method public onCommandStatus(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$200(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->notifyCommandStatus(II)V

    goto :goto_0

    .line 496
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCommandStatus from diff client, userdata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :goto_0
    return-void
.end method

.method public onGetSettingsResponse(ILvendor/qti/ims/configservice/V1_0/SettingsData;I)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "settingsData"    # Lvendor/qti/ims/configservice/V1_0/SettingsData;
    .param p3, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 502
    const-string v0, "ImsConfigServiceWrapper"

    if-eqz p2, :cond_0

    .line 503
    iget v1, p2, Lvendor/qti/ims/configservice/V1_0/SettingsData;->settingsId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetSettingsResponse received settingsData USER_AGENT_STRING: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    iget-object v2, p2, Lvendor/qti/ims/configservice/V1_0/SettingsData;->settingsValues:Lvendor/qti/ims/configservice/V1_0/SettingsValues;

    invoke-virtual {v1, v2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setUserAgentValue(Lvendor/qti/ims/configservice/V1_0/SettingsValues;)V

    .line 509
    :cond_0
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$200(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)I

    move-result v1

    if-ne p3, v1, :cond_1

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 510
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->handleGetSettingsResp(ILvendor/qti/ims/configservice/V1_0/SettingsData;I)V

    goto :goto_0

    .line 512
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetSettingsResponse from diff client, userdata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :goto_0
    return-void
.end method

.method public onGetUpdatedSettings(Lvendor/qti/ims/configservice/V1_0/SettingsData;)V
    .locals 3
    .param p1, "settingsData"    # Lvendor/qti/ims/configservice/V1_0/SettingsData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 598
    if-eqz p1, :cond_1

    .line 599
    iget v0, p1, Lvendor/qti/ims/configservice/V1_0/SettingsData;->settingsId:I

    const/4 v1, 0x3

    const-string v2, "ImsConfigServiceWrapper"

    if-ne v0, v1, :cond_0

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetUpdatedSettings received settingsData IMS_SERVICE_ENABLE_CONFIG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 604
    :cond_0
    iget v0, p1, Lvendor/qti/ims/configservice/V1_0/SettingsData;->settingsId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetUpdatedSettings received settingsData USER_AGENT_STRING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    iget-object v1, p1, Lvendor/qti/ims/configservice/V1_0/SettingsData;->settingsValues:Lvendor/qti/ims/configservice/V1_0/SettingsValues;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setUserAgentValue(Lvendor/qti/ims/configservice/V1_0/SettingsValues;)V

    .line 610
    :cond_1
    :goto_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->handleGetUpdatedSettingsCb(Lvendor/qti/ims/configservice/V1_0/SettingsData;)V

    .line 612
    :cond_2
    return-void
.end method

.method public onRcsServiceStatusUpdate(Z)V
    .locals 2
    .param p1, "b"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 565
    if-eqz p1, :cond_0

    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$700(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 566
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$700(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;

    move-result-object v0

    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;->onRcsInit()V

    .line 568
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$800(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 569
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$800(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0$$ExternalSyntheticLambda1;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 581
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRcsStatusReceived received rcsStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 582
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 581
    const-string v1, "ImsConfigServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :goto_0
    return-void
.end method

.method public onReconfigNeeded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 524
    const-string v0, "ImsConfigServiceWrapper"

    const-string v1, "onReconfigNeeded received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$402(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;Z)Z

    .line 527
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$500(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$500(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;

    move-result-object v0

    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;->onQmiServiceUp()V

    .line 530
    :cond_0
    return-void
.end method

.method public onTokenFetchRequest(III)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "i1"    # I
    .param p3, "i2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 534
    const-string v0, "ImsConfigServiceWrapper"

    const-string v1, "onTokenFetchRequest received "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void
.end method

.method public onUceStatusUpdate(Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)V
    .locals 3
    .param p1, "uceCapabilityInfo"    # Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    const-string v0, "onUceStatusUpdate received "

    const-string v1, "ImsConfigServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$600(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$600(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0$$ExternalSyntheticLambda0;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener_1_0;Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 556
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUceExecutor null onUceConfigStatusReceived received presenceStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p1, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isPresenceEnabled:Z

    .line 557
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "optionsStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p1, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isOptionsEnabled:Z

    .line 558
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 556
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :goto_0
    return-void
.end method
