.class Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;
.super Lvendor/qti/ims/configservice/V1_1/IConfigServiceListener$Stub;
.source "ImsConfigServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigListener"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;


# direct methods
.method private constructor <init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)V
    .locals 0

    .line 615
    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-direct {p0}, Lvendor/qti/ims/configservice/V1_1/IConfigServiceListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;
    .param p2, "x1"    # Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$1;

    .line 615
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onRcsServiceStatusUpdate$1$vendor-qti-imsrcs-config-ImsConfigServiceWrapper$ConfigListener(Z)V
    .locals 2
    .param p1, "b"    # Z

    .line 697
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$900(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$900(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$SipTransportConfigUpdateCallback;->onRcsStatusReceived(Z)V

    goto :goto_0

    .line 700
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRcsStatusReceived received rcsStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 701
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    const-string v1, "ImsConfigServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :goto_0
    return-void
.end method

.method synthetic lambda$onUceStatusUpdate$0$vendor-qti-imsrcs-config-ImsConfigServiceWrapper$ConfigListener(Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)V
    .locals 2
    .param p1, "uceCapabilityInfo"    # Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;

    .line 671
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$1000(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$1000(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;

    move-result-object v0

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v1, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$1100(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;->onUceConfigStatusReceived(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    goto :goto_0

    .line 674
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUceConfigStatusReceived received presenceStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isPresenceEnabled:Z

    .line 675
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "optionsStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isOptionsEnabled:Z

    .line 676
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 674
    const-string v1, "ImsConfigServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
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

    .line 714
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->handleAutoConfigErrorCb(Lvendor/qti/ims/configservice/V1_0/AutoConfigResponse;)V

    .line 717
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

    .line 644
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->handleAutoConfigReceived(Lvendor/qti/ims/configservice/V1_0/AutoConfig;)V

    .line 646
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

    .line 620
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$200(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->notifyCommandStatus(II)V

    goto :goto_0

    .line 623
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

    .line 624
    :goto_0
    return-void
.end method

.method public onCommandStatus_1_1(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 742
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$200(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->notifyCommandStatus(II)V

    goto :goto_0

    .line 745
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCommandStatus_1_1 from diff client, userdata: "

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

    .line 746
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

    .line 629
    const-string v0, "ImsConfigServiceWrapper"

    if-eqz p2, :cond_0

    .line 630
    iget v1, p2, Lvendor/qti/ims/configservice/V1_0/SettingsData;->settingsId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 631
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

    .line 632
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    iget-object v2, p2, Lvendor/qti/ims/configservice/V1_0/SettingsData;->settingsValues:Lvendor/qti/ims/configservice/V1_0/SettingsValues;

    invoke-virtual {v1, v2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setUserAgentValue(Lvendor/qti/ims/configservice/V1_0/SettingsValues;)V

    .line 636
    :cond_0
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$200(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)I

    move-result v1

    if-ne p3, v1, :cond_1

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 637
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->handleGetSettingsResp(ILvendor/qti/ims/configservice/V1_0/SettingsData;I)V

    goto :goto_0

    .line 639
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

    .line 640
    :goto_0
    return-void
.end method

.method public onGetSettingsResponse_1_1(ILvendor/qti/ims/configservice/V1_1/SettingsData;I)V
    .locals 3
    .param p1, "status"    # I
    .param p2, "settingsData"    # Lvendor/qti/ims/configservice/V1_1/SettingsData;
    .param p3, "userData"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 751
    const-string v0, "ImsConfigServiceWrapper"

    if-eqz p2, :cond_0

    .line 752
    iget v1, p2, Lvendor/qti/ims/configservice/V1_1/SettingsData;->settingsId:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetSettingsResponse_1_1 received settingsData USER_AGENT_STRING: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    iget-object v2, p2, Lvendor/qti/ims/configservice/V1_1/SettingsData;->settingsValues:Lvendor/qti/ims/configservice/V1_1/SettingsValues;

    invoke-virtual {v1, v2}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setUserAgentValue(Lvendor/qti/ims/configservice/V1_1/SettingsValues;)V

    .line 759
    :cond_0
    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$200(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)I

    move-result v1

    if-ne p3, v1, :cond_1

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 760
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->handleGetSettingsResp(ILvendor/qti/ims/configservice/V1_1/SettingsData;I)V

    goto :goto_0

    .line 762
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetSettingsResponse_1_1 from diff client, userdata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
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

    .line 723
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 724
    if-eqz p1, :cond_1

    .line 725
    iget v0, p1, Lvendor/qti/ims/configservice/V1_0/SettingsData;->settingsId:I

    const/4 v1, 0x3

    const-string v2, "ImsConfigServiceWrapper"

    if-ne v0, v1, :cond_0

    .line 727
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

    .line 730
    :cond_0
    iget v0, p1, Lvendor/qti/ims/configservice/V1_0/SettingsData;->settingsId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 731
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

    .line 732
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    iget-object v1, p1, Lvendor/qti/ims/configservice/V1_0/SettingsData;->settingsValues:Lvendor/qti/ims/configservice/V1_0/SettingsValues;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setUserAgentValue(Lvendor/qti/ims/configservice/V1_0/SettingsValues;)V

    .line 736
    :cond_1
    :goto_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->handleGetUpdatedSettingsCb(Lvendor/qti/ims/configservice/V1_0/SettingsData;)V

    .line 738
    :cond_2
    return-void
.end method

.method public onGetUpdatedSettings_1_1(Lvendor/qti/ims/configservice/V1_1/SettingsData;)V
    .locals 3
    .param p1, "settingsData"    # Lvendor/qti/ims/configservice/V1_1/SettingsData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 767
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 768
    if-eqz p1, :cond_1

    .line 769
    iget v0, p1, Lvendor/qti/ims/configservice/V1_1/SettingsData;->settingsId:I

    const/4 v1, 0x3

    const-string v2, "ImsConfigServiceWrapper"

    if-ne v0, v1, :cond_0

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetUpdatedSettings_1_1 received settingsData IMS_SERVICE_ENABLE_CONFIG: "

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

    .line 774
    :cond_0
    iget v0, p1, Lvendor/qti/ims/configservice/V1_1/SettingsData;->settingsId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onGetUpdatedSettings_1_1 received settingsData USER_AGENT_STRING: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    iget-object v1, p1, Lvendor/qti/ims/configservice/V1_1/SettingsData;->settingsValues:Lvendor/qti/ims/configservice/V1_1/SettingsValues;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->setUserAgentValue(Lvendor/qti/ims/configservice/V1_1/SettingsValues;)V

    .line 780
    :cond_1
    :goto_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$300(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigCbListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/config/ImsConfigCbListener;->handleGetUpdatedSettingsCb(Lvendor/qti/ims/configservice/V1_1/SettingsData;)V

    .line 782
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

    .line 691
    if-eqz p1, :cond_0

    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$700(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$700(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;

    move-result-object v0

    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$QueryAutoConfigListener;->onRcsInit()V

    .line 694
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$800(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$800(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener$$ExternalSyntheticLambda0;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 707
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRcsStatusReceived received rcsStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 708
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 707
    const-string v1, "ImsConfigServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
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

    .line 651
    const-string v0, "ImsConfigServiceWrapper"

    const-string v1, "onReconfigNeeded v1_1 received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$402(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;Z)Z

    .line 654
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$500(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 655
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$500(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;

    move-result-object v0

    invoke-virtual {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$InitQmiRequestsListener;->onQmiServiceUp()V

    .line 656
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

    .line 660
    const-string v0, "ImsConfigServiceWrapper"

    const-string v1, "onTokenFetchRequest received "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
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

    .line 666
    const-string v0, "onUceStatusUpdate received "

    const-string v1, "ImsConfigServiceWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$600(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;->this$0:Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;

    invoke-static {v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;->access$600(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener$$ExternalSyntheticLambda1;-><init>(Lvendor/qti/imsrcs/config/ImsConfigServiceWrapper$ConfigListener;Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 682
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUceExecutor null onUceConfigStatusReceived received presenceStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p1, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isPresenceEnabled:Z

    .line 683
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "optionsStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p1, Lvendor/qti/ims/configservice/V1_0/UceCapabilityInfo;->isOptionsEnabled:Z

    .line 684
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 682
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :goto_0
    return-void
.end method
