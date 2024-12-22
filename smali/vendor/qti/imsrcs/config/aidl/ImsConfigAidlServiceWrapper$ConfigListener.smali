.class Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;
.super Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub;
.source "ImsConfigAidlServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigListener"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;


# direct methods
.method private constructor <init>(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-direct {p0}, Lvendor/qti/ims/configaidlservice/IConfigServiceListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;
    .param p2, "x1"    # Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$1;

    .line 383
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;-><init>(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 391
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 387
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$onRcsServiceStatusUpdate$1$vendor-qti-imsrcs-config-aidl-ImsConfigAidlServiceWrapper$ConfigListener(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 473
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$900(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$900(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;->onRcsStatusReceived(Z)V

    goto :goto_0

    .line 476
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRcsStatusReceived received rcsStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 477
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    const-string v1, "ImsConfigAidlServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :goto_0
    return-void
.end method

.method synthetic lambda$onUceStatusUpdate$0$vendor-qti-imsrcs-config-aidl-ImsConfigAidlServiceWrapper$ConfigListener(Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;)V
    .locals 2
    .param p1, "uceCapabilityInfo"    # Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;

    .line 449
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$1000(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$1000(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    move-result-object v0

    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v1, p1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$1100(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;)Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;->onUceConfigStatusReceived(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    goto :goto_0

    .line 452
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUceConfigStatusReceived received presenceStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;->isPresenceEnabled:Z

    .line 453
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "optionsStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;->isOptionsEnabled:Z

    .line 454
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    const-string v1, "ImsConfigAidlServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :goto_0
    return-void
.end method

.method public onAutoConfigErrorSipResponse(Lvendor/qti/ims/configaidlservice/AutoConfigResponse;)V
    .locals 1
    .param p1, "autoConfigResponse"    # Lvendor/qti/ims/configaidlservice/AutoConfigResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$200(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$200(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->handleAutoConfigErrorCb(Lvendor/qti/ims/configaidlservice/AutoConfigResponse;)V

    .line 491
    :cond_0
    return-void
.end method

.method public onAutoConfigurationReceived(Lvendor/qti/ims/configaidlservice/AutoConfig;)V
    .locals 1
    .param p1, "autoConfig"    # Lvendor/qti/ims/configaidlservice/AutoConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 421
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$200(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$200(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->handleAutoConfigReceived(Lvendor/qti/ims/configaidlservice/AutoConfig;)V

    .line 423
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

    .line 397
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$100(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$200(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$200(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->notifyCommandStatus(II)V

    goto :goto_0

    .line 400
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

    const-string v1, "ImsConfigAidlServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :goto_0
    return-void
.end method

.method public onGetSettingsResponse(ILvendor/qti/ims/configaidlservice/SettingsData;I)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "settingsData"    # Lvendor/qti/ims/configaidlservice/SettingsData;
    .param p3, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 406
    const-string v0, "ImsConfigAidlServiceWrapper"

    if-eqz p2, :cond_0

    .line 407
    iget v1, p2, Lvendor/qti/ims/configaidlservice/SettingsData;->settingsId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 408
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

    .line 409
    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    iget-object v2, p2, Lvendor/qti/ims/configaidlservice/SettingsData;->settingsValues:Lvendor/qti/ims/configaidlservice/SettingsValues;

    invoke-virtual {v1, v2}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->setUserAgentValue(Lvendor/qti/ims/configaidlservice/SettingsValues;)V

    .line 413
    :cond_0
    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$100(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)I

    move-result v1

    if-ne p3, v1, :cond_1

    iget-object v1, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$200(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 414
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$200(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->handleGetSettingsResp(ILvendor/qti/ims/configaidlservice/SettingsData;I)V

    goto :goto_0

    .line 416
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

    .line 417
    :goto_0
    return-void
.end method

.method public onGetUpdatedSettings(Lvendor/qti/ims/configaidlservice/SettingsData;)V
    .locals 3
    .param p1, "settingsData"    # Lvendor/qti/ims/configaidlservice/SettingsData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 497
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$200(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 498
    if-eqz p1, :cond_2

    .line 499
    iget v0, p1, Lvendor/qti/ims/configaidlservice/SettingsData;->settingsId:I

    const/4 v1, 0x3

    const-string v2, "ImsConfigAidlServiceWrapper"

    if-ne v0, v1, :cond_1

    .line 500
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

    .line 501
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$500(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    iget-object v1, p1, Lvendor/qti/ims/configaidlservice/SettingsData;->settingsValues:Lvendor/qti/ims/configaidlservice/SettingsValues;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->notifyUceStatus(Lvendor/qti/ims/configaidlservice/SettingsValues;)V

    .line 503
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$700(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 504
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    iget-object v1, p1, Lvendor/qti/ims/configaidlservice/SettingsData;->settingsValues:Lvendor/qti/ims/configaidlservice/SettingsValues;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->notifyRcsStatus(Lvendor/qti/ims/configaidlservice/SettingsValues;)V

    goto :goto_0

    .line 506
    :cond_1
    iget v0, p1, Lvendor/qti/ims/configaidlservice/SettingsData;->settingsId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 507
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

    .line 508
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    iget-object v1, p1, Lvendor/qti/ims/configaidlservice/SettingsData;->settingsValues:Lvendor/qti/ims/configaidlservice/SettingsValues;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->setUserAgentValue(Lvendor/qti/ims/configaidlservice/SettingsValues;)V

    .line 512
    :cond_2
    :goto_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$200(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->handleGetUpdatedSettingsCb(Lvendor/qti/ims/configaidlservice/SettingsData;)V

    .line 514
    :cond_3
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

    .line 467
    if-eqz p1, :cond_0

    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$600(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$600(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;

    move-result-object v0

    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;->onRcsInit()V

    .line 470
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$700(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$700(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener$$ExternalSyntheticLambda1;-><init>(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 481
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRcsStatusReceived received rcsStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 482
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    const-string v1, "ImsConfigAidlServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
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

    .line 428
    const-string v0, "ImsConfigAidlServiceWrapper"

    const-string v1, "onReconfigNeeded received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$302(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;Z)Z

    .line 431
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$400(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$400(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;

    move-result-object v0

    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;->onQmiServiceUp()V

    .line 434
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

    .line 438
    const-string v0, "ImsConfigAidlServiceWrapper"

    const-string v1, "onTokenFetchRequest received "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return-void
.end method

.method public onUceStatusUpdate(Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;)V
    .locals 3
    .param p1, "uceCapabilityInfo"    # Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    const-string v0, "onUceStatusUpdate received "

    const-string v1, "ImsConfigAidlServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$500(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$500(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener$$ExternalSyntheticLambda0;-><init>(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 458
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUceExecutor null onUceConfigStatusReceived received presenceStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p1, Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;->isPresenceEnabled:Z

    .line 459
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "optionsStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p1, Lvendor/qti/ims/configaidlservice/UceCapabilityInfo;->isOptionsEnabled:Z

    .line 460
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :goto_0
    return-void
.end method

.method public onUserAgentReceived(Ljava/lang/String;I)V
    .locals 3
    .param p1, "userAgent"    # Ljava/lang/String;
    .param p2, "appType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    const-string v0, "ImsConfigAidlServiceWrapper"

    if-nez p1, :cond_0

    .line 519
    const-string v1, "onUserAgentReceived received userAgent as null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    return-void

    .line 522
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserAgentReceived userAgent["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] appType["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$800(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;)Ljava/lang/String;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 525
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-static {v0, p1}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->access$802(Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 526
    iget-object v0, p0, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/aidl/ImsConfigAidlServiceWrapper;->notifyUserAgentStatusToSipTransport()V

    .line 528
    :cond_1
    return-void
.end method
