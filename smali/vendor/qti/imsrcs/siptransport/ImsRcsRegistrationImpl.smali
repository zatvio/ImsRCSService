.class public Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;
.super Landroid/telephony/ims/stub/ImsRegistrationImplBase;
.source "ImsRcsRegistrationImpl.java"


# instance fields
.field final LOG_TAG:Ljava/lang/String;

.field mAidlManager:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

.field mHidlManager:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

.field mRatType:I

.field mRcsRegistrationExecutor:Ljava/util/concurrent/Executor;

.field mRegFeatures:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRegisteringFts:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSipTransportWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

.field mSlotId:I

.field mUserData:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 36
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;-><init>()V

    .line 29
    const/4 v0, -0x1

    iput v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mUserData:I

    .line 30
    const-string v1, "ImsRcsRegistrationImpl"

    iput-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->LOG_TAG:Ljava/lang/String;

    .line 31
    iput v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRatType:I

    .line 32
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRegFeatures:Landroid/util/ArraySet;

    .line 33
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRegisteringFts:Landroid/util/ArraySet;

    .line 37
    const-string v0, "ctor ImsRcsRegistrationImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRcsRegistrationExecutor:Ljava/util/concurrent/Executor;

    .line 39
    iput p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mSlotId:I

    .line 40
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mAidlManager:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    .line 41
    invoke-static {}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getInstance()Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mHidlManager:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    .line 42
    return-void
.end method

.method private isSipTransportWrapperAvailable()Z
    .locals 2

    .line 66
    const-string v0, "ImsRcsRegistrationImpl"

    const-string v1, "isSipTransportWrapperAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    sget-boolean v0, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->mImsAidlFactoryInitialized:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mAidlManager:Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;

    iget v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/ImsRcsAidlServiceMgr;->getSipTransportService(I)Lvendor/qti/imsrcs/siptransport/aidl/SipTransportAidlWrapper;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mSipTransportWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mHidlManager:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mSlotId:I

    invoke-virtual {v0, v1}, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->getSipTransportService(I)Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mSipTransportWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    .line 72
    :goto_0
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mSipTransportWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 73
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private updateSipAssociatedUri(Ljava/lang/String;)V
    .locals 14
    .param p1, "sipAssociatedUri"    # Ljava/lang/String;

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "uriCount":I
    const/4 v1, 0x0

    .line 80
    .local v1, "startPosUri":I
    const/4 v2, 0x0

    .line 81
    .local v2, "endPosUri":I
    const/4 v3, 0x0

    .line 83
    .local v3, "uriIndex":I
    const-string v4, "ImsRcsRegistrationImpl"

    if-nez p1, :cond_0

    .line 84
    const-string v5, "updateSipAssociatedUri String is Null "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return-void

    .line 88
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 90
    .local v5, "strlength":I
    :goto_0
    const-string v6, ">"

    const-string v7, "<"

    const/4 v8, -0x1

    if-eq v2, v8, :cond_1

    if-ge v2, v5, :cond_1

    .line 91
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 92
    if-eq v1, v8, :cond_1

    .line 93
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p1, v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 94
    if-eq v2, v8, :cond_1

    sub-int v8, v2, v1

    if-lez v8, :cond_1

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    if-lez v0, :cond_5

    .line 106
    const/4 v1, 0x0

    .line 107
    const/4 v2, 0x0

    .line 109
    new-array v8, v0, [Landroid/net/Uri;

    .line 111
    .local v8, "uris":[Landroid/net/Uri;
    :goto_1
    if-ge v3, v0, :cond_4

    .line 112
    invoke-virtual {p1, v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 113
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 114
    add-int/lit8 v9, v1, 0x1

    invoke-virtual {p1, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 115
    .local v9, "uriString":Ljava/lang/String;
    const-string v10, "tel"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x4

    if-eqz v11, :cond_2

    .line 116
    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    aput-object v10, v8, v3

    goto :goto_2

    .line 117
    :cond_2
    const-string v10, "sip"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 118
    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    aput-object v10, v8, v3

    .line 120
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 122
    .end local v9    # "uriString":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, v8}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    .line 125
    .end local v8    # "uris":[Landroid/net/Uri;
    :cond_5
    const-string v6, "updateSipAssociatedUri"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method


# virtual methods
.method public checkToInvokeOnRegistered(Landroid/util/ArraySet;ILjava/lang/String;)V
    .locals 2
    .param p2, "ratType"    # I
    .param p3, "sipAssociatedUri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 177
    .local p1, "ft":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkToInvokeOnRegistered: ratType passed["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Existing mRattype["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRatType:I

    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string v1, "ImsRcsRegistrationImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRatType:I

    if-eq v0, p2, :cond_3

    .line 185
    const-string v0, "checkToInvokeOnRegistered: Rattype changed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRegFeatures:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const-string v0, "checkToInvokeOnRegistered: no fts exists; so updating rattype alone"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iput p2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRatType:I

    goto :goto_0

    .line 193
    :cond_0
    const-string v0, "checkToInvokeOnRegistered: Calling onRegistered API with the Fts and ratType"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iput p2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRatType:I

    .line 195
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    iget v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRatType:I

    invoke-direct {v0, v1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRegFeatures:Landroid/util/ArraySet;

    .line 196
    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->setFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    .line 197
    .local v0, "attr":Landroid/telephony/ims/ImsRegistrationAttributes;
    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 198
    invoke-direct {p0, p3}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->updateSipAssociatedUri(Ljava/lang/String;)V

    .line 199
    .end local v0    # "attr":Landroid/telephony/ims/ImsRegistrationAttributes;
    goto :goto_0

    .line 204
    :cond_1
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRatType:I

    if-ne v0, p2, :cond_2

    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRegFeatures:Landroid/util/ArraySet;

    .line 205
    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 206
    :cond_2
    const-string v0, "checktoInvokeOnRegistered: rattype or fts changed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iput p2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRatType:I

    .line 208
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->setRegisteredFeatureTags(Landroid/util/ArraySet;)V

    .line 209
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    iget v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRatType:I

    invoke-direct {v0, v1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRegFeatures:Landroid/util/ArraySet;

    .line 210
    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->setFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    .line 211
    .restart local v0    # "attr":Landroid/telephony/ims/ImsRegistrationAttributes;
    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 212
    invoke-direct {p0, p3}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->updateSipAssociatedUri(Ljava/lang/String;)V

    .line 215
    .end local v0    # "attr":Landroid/telephony/ims/ImsRegistrationAttributes;
    :cond_3
    :goto_0
    return-void
.end method

.method public checkToInvokeOnRegisteredWithSipInfo(Landroid/util/ArraySet;ILjava/lang/String;Landroid/telephony/ims/SipDetails;)V
    .locals 2
    .param p2, "ratType"    # I
    .param p3, "sipAssociatedUri"    # Ljava/lang/String;
    .param p4, "sipInfo"    # Landroid/telephony/ims/SipDetails;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Landroid/telephony/ims/SipDetails;",
            ")V"
        }
    .end annotation

    .line 223
    .local p1, "ft":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkToInvokeOnRegistered: ratType passed["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 224
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] Existing mRattype["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRatType:I

    .line 225
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    const-string v1, "ImsRcsRegistrationImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v0, "checktoInvokeOnRegistered: rattype or fts changed"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iput p2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRatType:I

    .line 229
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->setRegisteredFeatureTags(Landroid/util/ArraySet;)V

    .line 230
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    iget v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRatType:I

    invoke-direct {v0, v1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    iget-object v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRegFeatures:Landroid/util/ArraySet;

    .line 231
    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->setFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->setSipDetails(Landroid/telephony/ims/SipDetails;)Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    .line 232
    .local v0, "attr":Landroid/telephony/ims/ImsRegistrationAttributes;
    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->onRegistered(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 233
    invoke-direct {p0, p3}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->updateSipAssociatedUri(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public clearRegisteredFeatureTags()V
    .locals 1

    .line 149
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRegFeatures:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 150
    return-void
.end method

.method public clearRegisteringFeatureTags()V
    .locals 2

    .line 171
    const-string v0, "ImsRcsRegistrationImpl"

    const-string v1, "clearRegisteringFeatureTags"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRegisteringFts:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 173
    return-void
.end method

.method public getRatType()I
    .locals 2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRatType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRatType:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRcsRegistrationImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRatType:I

    return v0
.end method

.method public getRegisteredFeatureTags()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRegFeatures:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getRegisteringFeatureTags()Landroid/util/ArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRegisteringFts:Landroid/util/ArraySet;

    return-object v0
.end method

.method public getUserData()I
    .locals 1

    .line 237
    iget v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mUserData:I

    return v0
.end method

.method public postOnRegistering()V
    .locals 3

    .line 245
    const-string v0, " postOnRegistering api called"

    const-string v1, "ImsRcsRegistrationImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRegisteringFts:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 248
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    iget v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRatType:I

    invoke-direct {v0, v2}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRegisteringFts:Landroid/util/ArraySet;

    .line 249
    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->setFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    .line 250
    .local v0, "attr":Landroid/telephony/ims/ImsRegistrationAttributes;
    const-string v2, "calling onRegistering"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 253
    .end local v0    # "attr":Landroid/telephony/ims/ImsRegistrationAttributes;
    :cond_0
    return-void
.end method

.method public postOnRegisteringWithSipInfo(Landroid/telephony/ims/SipDetails;)V
    .locals 3
    .param p1, "sipInfo"    # Landroid/telephony/ims/SipDetails;

    .line 256
    const-string v0, " postOnRegistering api called"

    const-string v1, "ImsRcsRegistrationImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRegisteringFts:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 258
    new-instance v0, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    iget v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRatType:I

    invoke-direct {v0, v2}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;-><init>(I)V

    iget-object v2, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRegisteringFts:Landroid/util/ArraySet;

    .line 259
    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->setFeatureTags(Ljava/util/Set;)Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->setSipDetails(Landroid/telephony/ims/SipDetails;)Landroid/telephony/ims/ImsRegistrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/ImsRegistrationAttributes$Builder;->build()Landroid/telephony/ims/ImsRegistrationAttributes;

    move-result-object v0

    .line 260
    .local v0, "attr":Landroid/telephony/ims/ImsRegistrationAttributes;
    const-string v2, "calling onRegistering"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->onRegistering(Landroid/telephony/ims/ImsRegistrationAttributes;)V

    .line 263
    .end local v0    # "attr":Landroid/telephony/ims/ImsRegistrationAttributes;
    :cond_0
    return-void
.end method

.method public removeRegisteringFeatureTags(Landroid/util/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 160
    .local p1, "ft":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v0, "removeRegisteringFeatureTags"

    const-string v1, "ImsRcsRegistrationImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 162
    .local v2, "featureTag":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeRegistering feature"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 163
    .end local v2    # "featureTag":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRegisteringFts:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    .line 164
    return-void
.end method

.method public setRatType(I)V
    .locals 2
    .param p1, "ratType"    # I

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRatType to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsRcsRegistrationImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRatType:I

    .line 132
    return-void
.end method

.method public setRegisteredFeatureTags(Landroid/util/ArraySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 140
    .local p1, "ft":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRegFeatures:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 141
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRegFeatures:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 142
    return-void
.end method

.method public setRegisteringFeatureTags(Landroid/util/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 153
    .local p1, "ft":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string v0, "setRegisteringFeatureTags"

    const-string v1, "ImsRcsRegistrationImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 155
    .local v2, "featureTag":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRegistering feature"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 156
    .end local v2    # "featureTag":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mRegisteringFts:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 157
    return-void
.end method

.method public setUserData(I)V
    .locals 0
    .param p1, "data"    # I

    .line 241
    iput p1, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mUserData:I

    .line 242
    return-void
.end method

.method public triggerFullNetworkRegistration(ILjava/lang/String;)V
    .locals 2
    .param p1, "sipCode"    # I
    .param p2, "sipReason"    # Ljava/lang/String;

    .line 60
    const-string v0, "ImsRcsRegistrationImpl"

    const-string v1, "triggerFullNetworkRegistration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-direct {p0}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->isSipTransportWrapperAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mSipTransportWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    invoke-virtual {v0, p1, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->triggerRegRestoration(ILjava/lang/String;)I

    .line 63
    :cond_0
    return-void
.end method

.method public triggerSipDelegateDeregistration()V
    .locals 2

    .line 54
    invoke-super {p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;->triggerSipDelegateDeregistration()V

    .line 55
    const-string v0, "ImsRcsRegistrationImpl"

    const-string v1, "triggerSipDelegateDeregistration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return-void
.end method

.method public updateSipDelegateRegistration()V
    .locals 2

    .line 46
    const-string v0, "ImsRcsRegistrationImpl"

    const-string v1, "updateSipDelegateRegistration"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-direct {p0}, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->isSipTransportWrapperAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mSipTransportWrapper:Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;

    invoke-virtual {v0}, Lvendor/qti/imsrcs/siptransport/hidl/SipTransportServiceWrapper;->triggerRegistration()I

    move-result v0

    iput v0, p0, Lvendor/qti/imsrcs/siptransport/ImsRcsRegistrationImpl;->mUserData:I

    .line 49
    :cond_0
    return-void
.end method
