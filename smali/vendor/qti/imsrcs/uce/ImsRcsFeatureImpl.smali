.class public Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;
.super Landroid/telephony/ims/feature/RcsFeature;
.source "ImsRcsFeatureImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$PresenceListener;,
        Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$OptionsListener;
    }
.end annotation


# static fields
.field private static final SERVICE_REGISTERED:I


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field isOptionsConfigured:Z

.field isOptionsRegistered:Z

.field isPresenceConfigured:Z

.field isPresenceRegistered:Z

.field mAidlManager:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

.field mCapExImpl:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

.field mConfigService:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

.field mLocalExecutor:Ljava/util/concurrent/Executor;

.field mManager:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

.field mOptionsListener:Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$OptionsListener;

.field mPresenceListener:Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$PresenceListener;

.field mRcsCaps:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

.field mSlotId:I


# direct methods
.method public constructor <init>(ILvendor/qti/imsrcs/config/ImsConfigServiceImpl;)V
    .locals 3
    .param p1, "slotId"    # I
    .param p2, "config"    # Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    .line 51
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/telephony/ims/feature/RcsFeature;-><init>(Ljava/util/concurrent/Executor;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mCapExImpl:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    .line 38
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mLocalExecutor:Ljava/util/concurrent/Executor;

    .line 39
    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mRcsCaps:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 41
    iput-boolean v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isPresenceRegistered:Z

    .line 42
    iput-boolean v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isPresenceConfigured:Z

    .line 44
    iput-boolean v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isOptionsRegistered:Z

    .line 45
    iput-boolean v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isOptionsConfigured:Z

    .line 48
    const-string v0, "ImsRcsService:ImsRcsFeatureImpl"

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    .line 52
    iput p1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mSlotId:I

    .line 53
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mManager:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    .line 54
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mAidlManager:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    .line 55
    iput-object p2, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mConfigService:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    .line 56
    invoke-virtual {p0, v1}, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->setFeatureState(I)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;

    .line 33
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;
    .param p1, "x1"    # Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 33
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->onCapsReceived(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    return-void
.end method

.method static synthetic access$200(Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;

    .line 33
    invoke-direct {p0}, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->checkAndNotifyFw()V

    return-void
.end method

.method static synthetic access$300(Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;)V
    .locals 0
    .param p0, "x0"    # Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;

    .line 33
    invoke-direct {p0}, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->reset()V

    return-void
.end method

.method private checkAndNotifyFw()V
    .locals 4

    .line 167
    new-instance v0, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    .line 169
    .local v0, "tempCapabilities":Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndNotifyFw :: [isPresenceConfigured: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isPresenceConfigured:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",isPresenceRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isPresenceRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "], [isOptionsConfigured: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isOptionsConfigured:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",isOptionsRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isOptionsRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-boolean v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isPresenceConfigured:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isPresenceRegistered:Z

    if-eqz v1, :cond_0

    .line 175
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->addCapabilities(I)V

    .line 177
    :cond_0
    iget-boolean v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isOptionsConfigured:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isOptionsRegistered:Z

    if-eqz v1, :cond_1

    .line 178
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->addCapabilities(I)V

    .line 180
    :cond_1
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mRcsCaps:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-virtual {v0, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 181
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndNotifyFw :: mRcsCaps: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iput-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mRcsCaps:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 183
    new-instance v1, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mRcsCaps:Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    invoke-virtual {v2}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->getMask()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    invoke-virtual {p0, v1}, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    .line 185
    :cond_2
    return-void
.end method

.method private onCapsReceived(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V
    .locals 5
    .param p1, "caps"    # Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    .line 135
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapsReceived :: caps received from Modem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v0

    .line 138
    .local v0, "presenceCapability":Z
    iget-boolean v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isPresenceConfigured:Z

    if-eq v1, v0, :cond_1

    .line 139
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCapsReceived :: isPresenceConfigured updated to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 140
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iput-boolean v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isPresenceConfigured:Z

    .line 143
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mAidlManager:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    if-eqz v1, :cond_0

    sget-boolean v1, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isPresenceConfigured:Z

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mAidlManager:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    invoke-virtual {v1}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->reinitializePresenceService()V

    .line 145
    return-void

    .line 147
    :cond_0
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mManager:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    if-eqz v1, :cond_1

    sget-boolean v1, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isPresenceConfigured:Z

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mManager:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    invoke-virtual {v1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->reinitializePresenceService()V

    .line 151
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->isCapable(I)Z

    move-result v1

    .line 152
    .local v1, "optionsCapability":Z
    iget-boolean v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isOptionsConfigured:Z

    if-eq v2, v1, :cond_3

    .line 153
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCapsReceived :: isOptionsConfigured updated to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 154
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 153
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput-boolean v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isOptionsConfigured:Z

    .line 157
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mAidlManager:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    if-eqz v2, :cond_2

    sget-boolean v2, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isOptionsConfigured:Z

    if-eqz v2, :cond_2

    .line 158
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mAidlManager:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    invoke-virtual {v2}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->reinitializeOptionsService()V

    .line 159
    return-void

    .line 161
    :cond_2
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mManager:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    if-eqz v2, :cond_3

    sget-boolean v2, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isOptionsConfigured:Z

    if-eqz v2, :cond_3

    .line 162
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mManager:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    invoke-virtual {v2}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->reinitializeOptionsService()V

    .line 164
    :cond_3
    invoke-direct {p0}, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->checkAndNotifyFw()V

    .line 165
    return-void
.end method

.method private reset()V
    .locals 1

    .line 188
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isPresenceRegistered:Z

    .line 189
    iput-boolean v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->isOptionsRegistered:Z

    .line 190
    invoke-direct {p0}, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->checkAndNotifyFw()V

    .line 191
    return-void
.end method


# virtual methods
.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 6
    .param p1, "request"    # Landroid/telephony/ims/feature/CapabilityChangeRequest;
    .param p2, "c"    # Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;

    .line 63
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "changeEnabledCapabilities :: received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$1;

    invoke-direct {v0, p0}, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$1;-><init>(Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;)V

    .line 71
    .local v0, "l":Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object v1

    .line 72
    .local v1, "caplist":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;>;"
    new-instance v2, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;-><init>(I)V

    .line 73
    .local v2, "capsFromFw":Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 74
    .local v4, "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    invoke-virtual {v4}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->addCapabilities(I)V

    .line 75
    .end local v4    # "cap":Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;
    goto :goto_0

    .line 76
    :cond_0
    iget-object v3, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeEnabledCapabilities :: Query Modem caps["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v3, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mConfigService:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iget-object v4, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mLocalExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v3, v4, v2, v0}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->updateUceCapability(Ljava/util/concurrent/Executor;Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$UceCapUpdateCallback;)V

    .line 78
    return-void
.end method

.method public createCapabilityExchangeImpl(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
    .locals 3
    .param p1, "capabilityExchangeEventListener"    # Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 90
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createCapabilityExchangeImpl :: invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mCapExImpl:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    if-nez v0, :cond_5

    .line 92
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mPresenceListener:Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$PresenceListener;

    if-nez v0, :cond_1

    .line 93
    new-instance v0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$PresenceListener;

    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mLocalExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, v1}, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$PresenceListener;-><init>(Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mPresenceListener:Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$PresenceListener;

    .line 94
    sget-boolean v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mAidlManager:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    iget v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getImsPresenceService(I)Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    move-result-object v0

    .line 96
    .local v0, "presence":Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mPresenceListener:Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$PresenceListener;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->setCapInfolistener(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;)V

    .line 97
    .end local v0    # "presence":Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;
    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mManager:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getImsPresenceService(I)Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    move-result-object v0

    .line 99
    .local v0, "presence":Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mPresenceListener:Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$PresenceListener;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->setCapInfolistener(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;)V

    .line 102
    .end local v0    # "presence":Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;
    :cond_1
    :goto_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mOptionsListener:Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$OptionsListener;

    if-nez v0, :cond_3

    .line 103
    new-instance v0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$OptionsListener;

    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mLocalExecutor:Ljava/util/concurrent/Executor;

    invoke-direct {v0, p0, v1}, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$OptionsListener;-><init>(Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mOptionsListener:Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$OptionsListener;

    .line 104
    sget-boolean v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mAidlManager:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    iget v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getImsOptionsService(I)Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;

    move-result-object v0

    .line 106
    .local v0, "options":Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mOptionsListener:Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$OptionsListener;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;->setOptionsCapListeners(Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;)V

    .line 107
    .end local v0    # "options":Lvendor/qti/imsrcs/uce/aidl/OptionsAidlServiceWrapper;
    goto :goto_1

    .line 108
    :cond_2
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mManager:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getImsOptionsService(I)Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    move-result-object v0

    .line 109
    .local v0, "options":Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mOptionsListener:Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$OptionsListener;

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->setOptionsCapListeners(Lvendor/qti/imsrcs/uce/ImsOptionsCapEventListener;)V

    .line 112
    .end local v0    # "options":Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;
    :cond_3
    :goto_1
    sget-boolean v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    if-eqz v0, :cond_4

    .line 113
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mAidlManager:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    iget v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mSlotId:I

    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mLocalExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getRcsCapExchangeImpl(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;ILjava/util/concurrent/Executor;)Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mCapExImpl:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    goto :goto_2

    .line 115
    :cond_4
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mManager:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget v1, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mSlotId:I

    iget-object v2, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mLocalExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getRcsCapExchangeImpl(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;ILjava/util/concurrent/Executor;)Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mCapExImpl:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    .line 118
    :cond_5
    :goto_2
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mCapExImpl:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    return-object v0
.end method

.method public destroyCapabilityExchangeImpl(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;)V
    .locals 1
    .param p1, "rcsCapabilityExchangeImplBase"    # Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mCapExImpl:Lvendor/qti/imsrcs/uce/ImsRcsCapabilityExchangeImpl;

    .line 85
    return-void
.end method

.method synthetic lambda$onFeatureReady$0$vendor-qti-imsrcs-uce-ImsRcsFeatureImpl()V
    .locals 2

    .line 126
    const-wide/16 v0, 0xc8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 130
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->setFeatureState(I)V

    .line 131
    return-void
.end method

.method public onFeatureReady()V
    .locals 2

    .line 123
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onFeatureReady:: Received from FW"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;->mLocalExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl$$ExternalSyntheticLambda0;-><init>(Lvendor/qti/imsrcs/uce/ImsRcsFeatureImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 132
    return-void
.end method
