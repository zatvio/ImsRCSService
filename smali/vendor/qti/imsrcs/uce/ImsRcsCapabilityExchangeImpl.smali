.class public Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;
.super Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
.source "ImsRcsCapabilityExchangeImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;,
        Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;,
        Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsNetworkCallback;
    }
.end annotation


# static fields
.field private static final lAvalabilityFetchMask:J = 0x1L


# instance fields
.field LOG_TAG:Ljava/lang/String;

.field isServiceAvable:Z

.field mAospPublishTriggerType:I

.field mCapExEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

.field mExecutor:Ljava/util/concurrent/Executor;

.field mOptionsListener:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;

.field mPresListener:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;

.field mSlotId:I


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/stub/CapabilityExchangeEventListener;I)V
    .locals 5
    .param p1, "localexe"    # Ljava/util/concurrent/Executor;
    .param p2, "l"    # Landroid/telephony/ims/stub/CapabilityExchangeEventListener;
    .param p3, "slotId"    # I

    .line 53
    invoke-direct {p0}, Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;-><init>()V

    .line 47
    const-string v0, "ImsRcsService:ImsRcsCapabilityExchangeImpl"

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mAospPublishTriggerType:I

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->isServiceAvable:Z

    .line 54
    iput-object p1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 55
    iput-object p2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mCapExEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 56
    iput p3, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mSlotId:I

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;

    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, v1}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;-><init>(Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mPresListener:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;

    .line 59
    new-instance v0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;

    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, v1}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;-><init>(Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mOptionsListener:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;

    .line 60
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, " ImsRcsCApavilityExchangeImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    move-result-object v0

    iget v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getImsPresenceService(I)Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    move-result-object v0

    .line 62
    .local v0, "presenceAildInstance":Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, " presenceAidlInstance obtained"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "presenceAidlInstance is not null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mPresListener:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->setCapInfolistener(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, " trying to obtain presence hidl instance"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    move-result-object v1

    iget v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mSlotId:I

    invoke-virtual {v1, v2}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getImsPresenceService(I)Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    move-result-object v1

    .line 69
    .local v1, "presence":Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;
    if-eqz v1, :cond_1

    .line 70
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, " presence hidl instance obtained"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mPresListener:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;

    invoke-virtual {v1, v2}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->setCapInfolistener(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, "ImsRcsCapabilityExchangeImpl null:presence"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v1    # "presence":Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;
    :goto_0
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    move-result-object v1

    iget v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mSlotId:I

    invoke-virtual {v1, v2}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getImsOptionsService(I)Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    move-result-object v1

    .line 77
    .local v1, "optionsAildInstance":Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;
    if-eqz v1, :cond_2

    .line 78
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mOptionsListener:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;

    invoke-virtual {v1, v2}, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->setOptionsCapListeners(Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;)V

    goto :goto_1

    .line 80
    :cond_2
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    move-result-object v2

    iget v3, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mSlotId:I

    invoke-virtual {v2, v3}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getImsOptionsService(I)Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    move-result-object v2

    .line 81
    .local v2, "options":Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;
    if-eqz v2, :cond_3

    .line 82
    iget-object v3, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mOptionsListener:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;

    invoke-virtual {v2, v3}, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->setOptionsCapListeners(Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;)V

    goto :goto_1

    .line 84
    :cond_3
    iget-object v3, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v4, "ImsRcsCapabilityExchangeImpl null:options"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v2    # "options":Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;IILjava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # Z

    .line 40
    invoke-direct/range {p0 .. p5}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->respondToIncomingOptions(IILjava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method private respondToIncomingOptions(IILjava/lang/String;Ljava/util/List;Z)V
    .locals 9
    .param p1, "tId"    # I
    .param p2, "code"    # I
    .param p3, "phrase"    # Ljava/lang/String;
    .param p5, "isContactinBlackList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 150
    .local p4, "caps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v8, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda3;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda3;-><init>(Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;IILjava/lang/String;Ljava/util/List;Z)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method


# virtual methods
.method public checkAndNotifyPublishTrigger()V
    .locals 3

    .line 167
    iget v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mAospPublishTriggerType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 169
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notify fw of Publish Trigger["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mAospPublishTriggerType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mCapExEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    iget v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mAospPublishTriggerType:I

    invoke-interface {v0, v1}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onRequestPublishCapabilities(I)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Landroid/telephony/ims/ImsException;
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Unable to send Publish Trigger"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    .end local v0    # "e":Landroid/telephony/ims/ImsException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$publishCapabilities$0$vendor-qti-imsrcs-uce-ImsRcsCapabilityExchangeImpl(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;Ljava/lang/String;)V
    .locals 6
    .param p1, "publishResponseCallback"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;
    .param p2, "pidfXml"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mPresListener:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->getUserData(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)J

    move-result-wide v0

    .line 94
    .local v0, "userdata":J
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "publishCapabilities "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    move-result-object v2

    iget v3, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mSlotId:I

    invoke-virtual {v2, v3}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getImsPresenceService(I)Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    move-result-object v2

    .line 96
    .local v2, "presenceAildInstance":Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;
    if-eqz v2, :cond_0

    .line 97
    invoke-virtual {v2, p2, v0, v1}, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->publishCapabilities(Ljava/lang/String;J)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    move-result-object v3

    iget v4, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mSlotId:I

    invoke-virtual {v3, v4}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getImsPresenceService(I)Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    move-result-object v3

    .line 100
    .local v3, "presence":Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;
    if-eqz v3, :cond_1

    .line 101
    invoke-virtual {v3, p2, v0, v1}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->publishCapabilities(Ljava/lang/String;J)V

    goto :goto_0

    .line 103
    :cond_1
    iget-object v4, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v5, "ImsRcsCapabilityExchangeImpl null:presence"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .end local v3    # "presence":Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;
    :goto_0
    return-void
.end method

.method synthetic lambda$respondToIncomingOptions$3$vendor-qti-imsrcs-uce-ImsRcsCapabilityExchangeImpl(IILjava/lang/String;Ljava/util/List;Z)V
    .locals 9
    .param p1, "tId"    # I
    .param p2, "code"    # I
    .param p3, "phrase"    # Ljava/lang/String;
    .param p4, "caps"    # Ljava/util/List;
    .param p5, "isContactinBlackList"    # Z

    .line 151
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "respondToIncomingOptions for TxId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    move-result-object v0

    iget v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getImsOptionsService(I)Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    move-result-object v0

    .line 153
    .local v0, "optionsAildInstance":Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;
    if-eqz v0, :cond_0

    .line 154
    move-object v2, v0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->respondToIncomingOptions(IILjava/lang/String;Ljava/util/List;Z)V

    goto :goto_0

    .line 156
    :cond_0
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    move-result-object v1

    iget v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mSlotId:I

    invoke-virtual {v1, v2}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getImsOptionsService(I)Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    move-result-object v1

    .line 157
    .local v1, "options":Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;
    if-eqz v1, :cond_1

    .line 158
    move-object v3, v1

    move v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->respondToIncomingOptions(IILjava/lang/String;Ljava/util/List;Z)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, "ImsRcsCapabilityExchangeImpl null:options"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .end local v1    # "options":Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;
    :goto_0
    return-void
.end method

.method synthetic lambda$sendOptionsCapabilityRequest$1$vendor-qti-imsrcs-uce-ImsRcsCapabilityExchangeImpl(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "list"    # Ljava/util/Set;
    .param p3, "optionsResponseCallback"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;

    .line 113
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    move-result-object v0

    iget v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getImsOptionsService(I)Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    move-result-object v0

    .line 114
    .local v0, "optionsAildInstance":Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;
    if-eqz v0, :cond_0

    .line 115
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mOptionsListener:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;

    invoke-virtual {v1, p3}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;->setOptionsRespCb(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;)J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->sendCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;J)V

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    move-result-object v1

    iget v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mSlotId:I

    invoke-virtual {v1, v2}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getImsOptionsService(I)Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    move-result-object v1

    .line 118
    .local v1, "options":Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;
    if-eqz v1, :cond_1

    .line 119
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mOptionsListener:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;

    invoke-virtual {v2, p3}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$OptionsListener;->setOptionsRespCb(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;)J

    move-result-wide v2

    invoke-virtual {v1, p1, p2, v2, v3}, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->sendCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;J)V

    goto :goto_0

    .line 121
    :cond_1
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v3, "ImsRcsCapabilityExchangeImpl null:options"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    .end local v1    # "options":Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;
    :goto_0
    return-void
.end method

.method synthetic lambda$subscribeForCapabilities$2$vendor-qti-imsrcs-uce-ImsRcsCapabilityExchangeImpl(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;Ljava/util/Collection;)V
    .locals 6
    .param p1, "subscribeResponseCallback"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
    .param p2, "list"    # Ljava/util/Collection;

    .line 132
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mPresListener:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, p1, v2}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$PresenceListener;->getUserData(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;Z)J

    move-result-wide v0

    .line 133
    .local v0, "userdata":J
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "subscribeForCapabilities "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    move-result-object v2

    iget v3, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mSlotId:I

    invoke-virtual {v2, v3}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getImsPresenceService(I)Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    move-result-object v2

    .line 135
    .local v2, "presenceAildInstance":Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;
    if-eqz v2, :cond_1

    .line 136
    invoke-virtual {v2, p2, v0, v1}, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->subscribeForCapabilities(Ljava/util/Collection;J)V

    goto :goto_1

    .line 138
    :cond_1
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    move-result-object v3

    iget v4, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mSlotId:I

    invoke-virtual {v3, v4}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getImsPresenceService(I)Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    move-result-object v3

    .line 139
    .local v3, "presence":Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;
    if-eqz v3, :cond_2

    .line 140
    invoke-virtual {v3, p2, v0, v1}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->subscribeForCapabilities(Ljava/util/Collection;J)V

    goto :goto_1

    .line 142
    :cond_2
    iget-object v4, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->LOG_TAG:Ljava/lang/String;

    const-string v5, "ImsRcsCapabilityExchangeImpl null:presence"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .end local v3    # "presence":Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;
    :goto_1
    return-void
.end method

.method public publishCapabilities(Ljava/lang/String;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V
    .locals 2
    .param p1, "pidfXml"    # Ljava/lang/String;
    .param p2, "publishResponseCallback"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;

    .line 92
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2, p1}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda2;-><init>(Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method

.method public sendOptionsCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p3, "optionsResponseCallback"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;",
            ")V"
        }
    .end annotation

    .line 112
    .local p2, "list":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda1;-><init>(Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$OptionsResponseCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method public subscribeForCapabilities(Ljava/util/Collection;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;)V
    .locals 2
    .param p2, "subscribeResponseCallback"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;",
            ")V"
        }
    .end annotation

    .line 131
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl$$ExternalSyntheticLambda0;-><init>(Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$SubscribeResponseCallback;Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method
