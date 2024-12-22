.class public abstract Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;
.super Ljava/lang/Object;
.source "SipDelegateWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ImsSipDelegateEventListener"
.end annotation


# instance fields
.field protected mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "e"    # Ljava/util/concurrent/Executor;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    .line 74
    return-void
.end method


# virtual methods
.method protected convertFtStringtoList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "featureTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 173
    const-string v0, "botversion"

    .line 174
    .local v0, "botVersionStr":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 176
    .local v1, "ftTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    const-string v2, ";"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 179
    :cond_0
    return-object v1
.end method

.method public final handleDelegateCreation(ILjava/util/ArrayList;)V
    .locals 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/ims/rcssip/V1_0/featureTagData;",
            ">;)V"
        }
    .end annotation

    .line 130
    .local p2, "deniedFeatureTags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/rcssip/V1_0/featureTagData;>;"
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda0;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;Ljava/util/ArrayList;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 141
    return-void
.end method

.method public final handleDelegateCreation(I[Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "deniedFeatureTags"    # [Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;

    .line 152
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p2, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda11;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;[Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method public final handleDelegateDestroyed(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "reason"    # I

    .line 167
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda8;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

.method public final handleFeatureTagStatusChange(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/ims/rcssip/V1_0/featureTagData;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p1, "featureTagList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/rcssip/V1_0/featureTagData;>;"
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda1;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method public final handleFeatureTagStatusChange([Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;)V
    .locals 2
    .param p1, "featureTagList"    # [Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;

    .line 145
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda6;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;[Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 148
    return-void
.end method

.method public final handleIncomingMsg(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p1, "sipMsg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda3;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method public final handleIncomingMsg([B)V
    .locals 2
    .param p1, "sipMsg"    # [B

    .line 84
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda7;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;[B)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method public final handleOnEventReceived(I)V
    .locals 2
    .param p1, "connectionStatus"    # I

    .line 98
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda10;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 101
    return-void
.end method

.method public final handleOnEventReceived(Lvendor/qti/ims/rcssipaidlservice/EventData;)V
    .locals 2
    .param p1, "evtData"    # Lvendor/qti/ims/rcssipaidlservice/EventData;

    .line 116
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda5;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;Lvendor/qti/ims/rcssipaidlservice/EventData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method

.method public final handleOnEventReceived_1_1(Lvendor/qti/ims/rcssip/V1_1/eventData;)V
    .locals 2
    .param p1, "evtData"    # Lvendor/qti/ims/rcssip/V1_1/eventData;

    .line 104
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda9;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;Lvendor/qti/ims/rcssip/V1_1/eventData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 107
    return-void
.end method

.method public final handleOnEventReceived_1_2(Lvendor/qti/ims/rcssip/V1_2/eventData;)V
    .locals 2
    .param p1, "evtData"    # Lvendor/qti/ims/rcssip/V1_2/eventData;

    .line 110
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda2;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;Lvendor/qti/ims/rcssip/V1_2/eventData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public final handleSipDelegateCmdStatus(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "userData"    # I

    .line 78
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener$$ExternalSyntheticLambda4;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 81
    return-void
.end method

.method synthetic lambda$handleDelegateCreation$10$vendor-qti-imsrcs-siptransport-hidl-SipDelegateWrapper$ImsSipDelegateEventListener([Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;I)V
    .locals 5
    .param p1, "deniedFeatureTags"    # [Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;
    .param p2, "status"    # I

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, "deniedFtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 160
    .local v3, "ftData":Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;
    iget-object v4, v3, Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;->featureTag:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->convertFtStringtoList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 155
    .end local v3    # "ftData":Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {p0, p2, v0}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->onDelegateCreated(ILjava/util/ArrayList;)V

    .line 163
    return-void
.end method

.method synthetic lambda$handleDelegateCreation$8$vendor-qti-imsrcs-siptransport-hidl-SipDelegateWrapper$ImsSipDelegateEventListener(Ljava/util/ArrayList;I)V
    .locals 4
    .param p1, "deniedFeatureTags"    # Ljava/util/ArrayList;
    .param p2, "status"    # I

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v0, "deniedFtList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/ims/rcssip/V1_0/featureTagData;

    .line 137
    .local v2, "ftData":Lvendor/qti/ims/rcssip/V1_0/featureTagData;
    iget-object v3, v2, Lvendor/qti/ims/rcssip/V1_0/featureTagData;->featureTag:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->convertFtStringtoList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 138
    .end local v2    # "ftData":Lvendor/qti/ims/rcssip/V1_0/featureTagData;
    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p0, p2, v0}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->onDelegateCreated(ILjava/util/ArrayList;)V

    .line 140
    return-void
.end method

.method synthetic lambda$handleDelegateDestroyed$11$vendor-qti-imsrcs-siptransport-hidl-SipDelegateWrapper$ImsSipDelegateEventListener(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "reason"    # I

    .line 168
    invoke-virtual {p0, p1, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->onDelegateDestroyed(II)V

    .line 169
    return-void
.end method

.method synthetic lambda$handleFeatureTagStatusChange$7$vendor-qti-imsrcs-siptransport-hidl-SipDelegateWrapper$ImsSipDelegateEventListener(Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "featureTagList"    # Ljava/util/ArrayList;

    .line 124
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->onFeatureTagStatusChange(Ljava/util/ArrayList;)V

    .line 125
    return-void
.end method

.method synthetic lambda$handleFeatureTagStatusChange$9$vendor-qti-imsrcs-siptransport-hidl-SipDelegateWrapper$ImsSipDelegateEventListener([Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;)V
    .locals 0
    .param p1, "featureTagList"    # [Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;

    .line 146
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->onFeatureTagStatusChange([Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;)V

    .line 147
    return-void
.end method

.method synthetic lambda$handleIncomingMsg$1$vendor-qti-imsrcs-siptransport-hidl-SipDelegateWrapper$ImsSipDelegateEventListener([B)V
    .locals 0
    .param p1, "sipMsg"    # [B

    .line 85
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->onIncomingMessageReceived([B)V

    .line 86
    return-void
.end method

.method synthetic lambda$handleIncomingMsg$2$vendor-qti-imsrcs-siptransport-hidl-SipDelegateWrapper$ImsSipDelegateEventListener(Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "sipMsg"    # Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [B

    .line 91
    .local v0, "sipBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 92
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0, v0}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->onIncomingMessageReceived([B)V

    .line 95
    return-void
.end method

.method synthetic lambda$handleOnEventReceived$3$vendor-qti-imsrcs-siptransport-hidl-SipDelegateWrapper$ImsSipDelegateEventListener(I)V
    .locals 0
    .param p1, "connectionStatus"    # I

    .line 99
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->onEventReceived(I)V

    .line 100
    return-void
.end method

.method synthetic lambda$handleOnEventReceived$6$vendor-qti-imsrcs-siptransport-hidl-SipDelegateWrapper$ImsSipDelegateEventListener(Lvendor/qti/ims/rcssipaidlservice/EventData;)V
    .locals 0
    .param p1, "evtData"    # Lvendor/qti/ims/rcssipaidlservice/EventData;

    .line 117
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->onEventReceived(Lvendor/qti/ims/rcssipaidlservice/EventData;)V

    .line 118
    return-void
.end method

.method synthetic lambda$handleOnEventReceived_1_1$4$vendor-qti-imsrcs-siptransport-hidl-SipDelegateWrapper$ImsSipDelegateEventListener(Lvendor/qti/ims/rcssip/V1_1/eventData;)V
    .locals 0
    .param p1, "evtData"    # Lvendor/qti/ims/rcssip/V1_1/eventData;

    .line 105
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->onEventReceived_1_1(Lvendor/qti/ims/rcssip/V1_1/eventData;)V

    .line 106
    return-void
.end method

.method synthetic lambda$handleOnEventReceived_1_2$5$vendor-qti-imsrcs-siptransport-hidl-SipDelegateWrapper$ImsSipDelegateEventListener(Lvendor/qti/ims/rcssip/V1_2/eventData;)V
    .locals 0
    .param p1, "evtData"    # Lvendor/qti/ims/rcssip/V1_2/eventData;

    .line 111
    invoke-virtual {p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->onEventReceived_1_2(Lvendor/qti/ims/rcssip/V1_2/eventData;)V

    .line 112
    return-void
.end method

.method synthetic lambda$handleSipDelegateCmdStatus$0$vendor-qti-imsrcs-siptransport-hidl-SipDelegateWrapper$ImsSipDelegateEventListener(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "userData"    # I

    .line 79
    invoke-virtual {p0, p1, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->onConnectionCmdStatus(II)V

    .line 80
    return-void
.end method

.method public onConnectionCmdStatus(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "userData"    # I

    .line 190
    return-void
.end method

.method public onDelegateCreated(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p2, "deniedFts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public onDelegateDestroyed(II)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "reason"    # I

    .line 184
    return-void
.end method

.method public onEventReceived(I)V
    .locals 0
    .param p1, "connectionStatus"    # I

    .line 185
    return-void
.end method

.method public onEventReceived(Lvendor/qti/ims/rcssipaidlservice/EventData;)V
    .locals 0
    .param p1, "data"    # Lvendor/qti/ims/rcssipaidlservice/EventData;

    .line 188
    return-void
.end method

.method public onEventReceived_1_1(Lvendor/qti/ims/rcssip/V1_1/eventData;)V
    .locals 0
    .param p1, "data"    # Lvendor/qti/ims/rcssip/V1_1/eventData;

    .line 186
    return-void
.end method

.method public onEventReceived_1_2(Lvendor/qti/ims/rcssip/V1_2/eventData;)V
    .locals 0
    .param p1, "data"    # Lvendor/qti/ims/rcssip/V1_2/eventData;

    .line 187
    return-void
.end method

.method public onFeatureTagStatusChange(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/ims/rcssip/V1_0/featureTagData;",
            ">;)V"
        }
    .end annotation

    .line 192
    .local p1, "featureTagStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/rcssip/V1_0/featureTagData;>;"
    return-void
.end method

.method public onFeatureTagStatusChange([Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;)V
    .locals 0
    .param p1, "featureTagStatus"    # [Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;

    .line 194
    return-void
.end method

.method public onIncomingMessageReceived([B)V
    .locals 0
    .param p1, "sipMsg"    # [B

    .line 189
    return-void
.end method
