.class Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper$SipDelegateListener;
.super Lvendor/qti/ims/rcssipaidlservice/ISipConnectionListener$Stub;
.source "SipDelegateAidlWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipDelegateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;


# direct methods
.method private constructor <init>(Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;

    invoke-direct {p0}, Lvendor/qti/ims/rcssipaidlservice/ISipConnectionListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;
    .param p2, "x1"    # Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper$1;

    .line 220
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper$SipDelegateListener;-><init>(Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;)V

    return-void
.end method


# virtual methods
.method public final getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 226
    const-string v0, "c77ca029456b5502d528cb7695fdcb5698c576da"

    return-object v0
.end method

.method public final getInterfaceVersion()I
    .locals 1

    .line 223
    const/4 v0, 0x1

    return v0
.end method

.method public handleIncomingMessage([B)V
    .locals 2
    .param p1, "arrayList"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 252
    const-string v0, "SipDelegateAidlWrapper"

    const-string v1, ": handleIncomingMessage invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->mSipDelegateEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->handleIncomingMsg([B)V

    .line 254
    return-void
.end method

.method public onCommandStatus(II)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "userdata"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    const-string v0, "SipDelegateAidlWrapper"

    const-string v1, ": onCommandStatus handleSipDelegateCmdStatus invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->mSipDelegateEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    invoke-virtual {v0, p1, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->handleSipDelegateCmdStatus(II)V

    .line 263
    return-void
.end method

.method public onConnectionCreated(I[Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "deniedFTList"    # [Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->mSipDelegateEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    invoke-virtual {v0, p1, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->handleDelegateCreation(I[Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;)V

    .line 233
    return-void
.end method

.method public onConnectionDestroyed(II)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "reason"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->mSipDelegateEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    invoke-virtual {v0, p1, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->handleDelegateDestroyed(II)V

    .line 239
    return-void
.end method

.method public onEventReceived(Lvendor/qti/ims/rcssipaidlservice/EventData;)V
    .locals 2
    .param p1, "data"    # Lvendor/qti/ims/rcssipaidlservice/EventData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEventReceived subscriberUri is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lvendor/qti/ims/rcssipaidlservice/EventData;->subscriberAssociatedUri:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SipDelegateAidlWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p1, Lvendor/qti/ims/rcssipaidlservice/EventData;->subscriberAssociatedUri:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 245
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;

    iget-object v1, p1, Lvendor/qti/ims/rcssipaidlservice/EventData;->subscriberAssociatedUri:[Ljava/lang/String;

    invoke-static {v0, v1}, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->access$100(Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;[Ljava/lang/String;)V

    .line 246
    :cond_0
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->mSipDelegateEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->handleOnEventReceived(Lvendor/qti/ims/rcssipaidlservice/EventData;)V

    .line 247
    return-void
.end method

.method public onFeatureTagStatusChange([Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;)V
    .locals 1
    .param p1, "arrayList"    # [Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/aidl/SipDelegateAidlWrapper;->mSipDelegateEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->handleFeatureTagStatusChange([Lvendor/qti/ims/rcssipaidlservice/FeatureTagData;)V

    .line 270
    return-void
.end method
