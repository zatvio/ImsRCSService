.class public Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;
.super Ljava/lang/Object;
.source "PresenceAidlServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field mAidlPresenceListener:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;

.field public mAidlPresenceService:Lvendor/qti/ims/rcsuceaidlservice/IPresenceService;

.field mCapEventListnerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;",
            ">;"
        }
    .end annotation
.end field

.field mPublishTrigger:I

.field mServiceAvailable:I

.field mSlotId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "SlotId"    # I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mAidlPresenceService:Lvendor/qti/ims/rcsuceaidlservice/IPresenceService;

    .line 38
    const-string v1, "ImsRcsService:PresenceAidlServiceWrapper"

    iput-object v1, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->LOG_TAG:Ljava/lang/String;

    .line 39
    new-instance v1, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;

    invoke-direct {v1, p0, v0}, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;-><init>(Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$1;)V

    iput-object v1, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mAidlPresenceListener:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mPublishTrigger:I

    .line 42
    iput v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mServiceAvailable:I

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->LOG_TAG:Ljava/lang/String;

    .line 47
    iput p1, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mSlotId:I

    .line 48
    return-void
.end method

.method static synthetic access$100(Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;

    .line 36
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 51
    return-void
.end method

.method public getAidlPresenceListener()Lvendor/qti/ims/rcsuceaidlservice/IPresenceListener;
    .locals 1

    .line 159
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mAidlPresenceListener:Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper$PresenceListener;

    return-object v0
.end method

.method public presenceDied()V
    .locals 2

    .line 54
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    .line 55
    .local v1, "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    invoke-virtual {v1}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handlePresenceServiceDied()V

    .line 56
    .end local v1    # "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method public publishCapabilities(Ljava/lang/String;J)V
    .locals 1
    .param p1, "pidfXml"    # Ljava/lang/String;
    .param p2, "userData"    # J

    .line 60
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mAidlPresenceService:Lvendor/qti/ims/rcsuceaidlservice/IPresenceService;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p1, p2, p3}, Lvendor/qti/ims/rcsuceaidlservice/IPresenceService;->publishCapability(Ljava/lang/String;J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 65
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public setAidlPresenceService(Lvendor/qti/ims/rcsuceaidlservice/IPresenceService;)V
    .locals 0
    .param p1, "service"    # Lvendor/qti/ims/rcsuceaidlservice/IPresenceService;

    .line 163
    iput-object p1, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mAidlPresenceService:Lvendor/qti/ims/rcsuceaidlservice/IPresenceService;

    .line 164
    return-void
.end method

.method public setCapInfolistener(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;)V
    .locals 3
    .param p1, "l"    # Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "version":I
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget v1, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mServiceAvailable:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 171
    invoke-virtual {p1, v1}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handleServiceStatus(I)V

    .line 173
    :cond_0
    iget v1, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mPublishTrigger:I

    if-eq v1, v2, :cond_2

    .line 174
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mAidlPresenceService:Lvendor/qti/ims/rcsuceaidlservice/IPresenceService;

    if-eqz v2, :cond_1

    .line 175
    const/4 v0, 0x1

    .line 176
    iget v2, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mSlotId:I

    invoke-virtual {p1, v1, v2, v0}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handlePublishTrigger(III)V

    goto :goto_0

    .line 179
    :cond_1
    iget v2, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mSlotId:I

    invoke-virtual {p1, v1, v2, v0}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handlePublishTrigger(III)V

    .line 181
    :cond_2
    :goto_0
    return-void
.end method

.method public subscribeForCapabilities(Ljava/util/Collection;J)V
    .locals 4
    .param p2, "userData"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;J)V"
        }
    .end annotation

    .line 69
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v0, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 71
    .local v2, "s":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    nop

    .end local v2    # "s":Landroid/net/Uri;
    goto :goto_0

    .line 73
    :cond_0
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/aidl/PresenceAidlServiceWrapper;->mAidlPresenceService:Lvendor/qti/ims/rcsuceaidlservice/IPresenceService;

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-interface {v1, v2, p2, p3}, Lvendor/qti/ims/rcsuceaidlservice/IPresenceService;->getContactCapability([Ljava/lang/String;J)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0    # "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    goto :goto_1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 78
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
