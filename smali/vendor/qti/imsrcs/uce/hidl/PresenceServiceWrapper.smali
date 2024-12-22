.class public Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;
.super Ljava/lang/Object;
.source "PresenceServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;
    }
.end annotation


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field mCapEventListnerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;",
            ">;"
        }
    .end annotation
.end field

.field public mHidlPresenceService:Lvendor/qti/ims/rcsuce/V1_0/IPresenceService;

.field public mHidlPresenceService_1:Lvendor/qti/ims/rcsuce/V1_2/IPresenceService;

.field mPublishTrigger:I

.field mServiceAvailable:I

.field mSlotId:I

.field mhidlPresenceListener:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "SlotId"    # I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mHidlPresenceService_1:Lvendor/qti/ims/rcsuce/V1_2/IPresenceService;

    .line 39
    iput-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mHidlPresenceService:Lvendor/qti/ims/rcsuce/V1_0/IPresenceService;

    .line 40
    const-string v1, "ImsRcsService:PresenceServiceWrapper"

    iput-object v1, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->LOG_TAG:Ljava/lang/String;

    .line 41
    new-instance v1, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;

    invoke-direct {v1, p0, v0}, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;-><init>(Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$1;)V

    iput-object v1, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mhidlPresenceListener:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mPublishTrigger:I

    .line 44
    iput v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mServiceAvailable:I

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->LOG_TAG:Ljava/lang/String;

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

    iput-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->LOG_TAG:Ljava/lang/String;

    .line 49
    iput p1, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mSlotId:I

    .line 50
    return-void
.end method

.method static synthetic access$100(Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;

    .line 37
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 53
    return-void
.end method

.method public getHidlPresenceListener()Lvendor/qti/ims/rcsuce/V1_2/IPresenceListener;
    .locals 1

    .line 183
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mhidlPresenceListener:Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper$PresenceListener;

    return-object v0
.end method

.method public presenceDied()V
    .locals 2

    .line 56
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    .line 57
    .local v1, "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    invoke-virtual {v1}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handlePresenceServiceDied()V

    .line 58
    .end local v1    # "e":Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;
    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method public publishCapabilities(Ljava/lang/String;J)V
    .locals 2
    .param p1, "pidfXml"    # Ljava/lang/String;
    .param p2, "userData"    # J

    .line 62
    :try_start_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mHidlPresenceService_1:Lvendor/qti/ims/rcsuce/V1_2/IPresenceService;

    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0, p1, p2, p3}, Lvendor/qti/ims/rcsuce/V1_2/IPresenceService;->publishCapability(Ljava/lang/String;J)I

    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mHidlPresenceService:Lvendor/qti/ims/rcsuce/V1_0/IPresenceService;

    if-eqz v0, :cond_1

    .line 65
    invoke-interface {v0, p1, p2, p3}, Lvendor/qti/ims/rcsuce/V1_0/IPresenceService;->publishCapability(Ljava/lang/String;J)I

    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v1, " publishCapabilities: hidlPresenceService not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    goto :goto_1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 72
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method

.method public setCapInfolistener(Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;)V
    .locals 3
    .param p1, "l"    # Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "version":I
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mCapEventListnerList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget v1, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mServiceAvailable:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 198
    invoke-virtual {p1, v1}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handleServiceStatus(I)V

    .line 200
    :cond_0
    iget v1, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mPublishTrigger:I

    if-eq v1, v2, :cond_2

    .line 201
    iget-object v2, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mHidlPresenceService_1:Lvendor/qti/ims/rcsuce/V1_2/IPresenceService;

    if-eqz v2, :cond_1

    .line 202
    const/4 v0, 0x1

    .line 203
    iget v2, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mSlotId:I

    invoke-virtual {p1, v1, v2, v0}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handlePublishTrigger(III)V

    goto :goto_0

    .line 206
    :cond_1
    iget v2, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mSlotId:I

    invoke-virtual {p1, v1, v2, v0}, Lvendor/qti/imsrcs/uce/ImsPresCapEventListener;->handlePublishTrigger(III)V

    .line 208
    :cond_2
    :goto_0
    return-void
.end method

.method public setHidlPresenceService(Lvendor/qti/ims/rcsuce/V1_0/IPresenceService;)V
    .locals 0
    .param p1, "service"    # Lvendor/qti/ims/rcsuce/V1_0/IPresenceService;

    .line 190
    iput-object p1, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mHidlPresenceService:Lvendor/qti/ims/rcsuce/V1_0/IPresenceService;

    .line 191
    return-void
.end method

.method public setHidlPresenceService(Lvendor/qti/ims/rcsuce/V1_2/IPresenceService;)V
    .locals 0
    .param p1, "service"    # Lvendor/qti/ims/rcsuce/V1_2/IPresenceService;

    .line 187
    iput-object p1, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mHidlPresenceService_1:Lvendor/qti/ims/rcsuce/V1_2/IPresenceService;

    .line 188
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

    .line 76
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/net/Uri;>;"
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
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

    .line 78
    .local v2, "s":Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    nop

    .end local v2    # "s":Landroid/net/Uri;
    goto :goto_0

    .line 80
    :cond_0
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mHidlPresenceService_1:Lvendor/qti/ims/rcsuce/V1_2/IPresenceService;

    if-eqz v1, :cond_1

    .line 81
    invoke-interface {v1, v0, p2, p3}, Lvendor/qti/ims/rcsuce/V1_2/IPresenceService;->getContactCapability(Ljava/util/ArrayList;J)I

    goto :goto_1

    .line 82
    :cond_1
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->mHidlPresenceService:Lvendor/qti/ims/rcsuce/V1_0/IPresenceService;

    if-eqz v1, :cond_2

    .line 83
    invoke-interface {v1, v0, p2, p3}, Lvendor/qti/ims/rcsuce/V1_0/IPresenceService;->getContactCapability(Ljava/util/ArrayList;J)I

    goto :goto_1

    .line 85
    :cond_2
    iget-object v1, p0, Lvendor/qti/imsrcs/uce/hidl/PresenceServiceWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v2, " subscribeForCapabilities: hidlPresenceService not initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    goto :goto_2

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 90
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method
