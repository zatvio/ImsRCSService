.class Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper$SipDelegateListener;
.super Lvendor/qti/ims/rcssip/V1_2/ISipConnectionListener$Stub;
.source "SipDelegateHidlWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SipDelegateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;


# direct methods
.method private constructor <init>(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;

    invoke-direct {p0}, Lvendor/qti/ims/rcssip/V1_2/ISipConnectionListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;
    .param p2, "x1"    # Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper$1;

    .line 261
    invoke-direct {p0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper$SipDelegateListener;-><init>(Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;)V

    return-void
.end method


# virtual methods
.method public handleIncomingMessage(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 294
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    const-string v0, "SipDelegateHidlWrapper"

    const-string v1, ": handleIncomingMessage invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mSipDelegateEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->handleIncomingMsg(Ljava/util/ArrayList;)V

    .line 296
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

    .line 301
    const-string v0, "SipDelegateHidlWrapper"

    const-string v1, ": onCommandStatus handleSipDelegateCmdStatus invoked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mSipDelegateEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    invoke-virtual {v0, p1, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->handleSipDelegateCmdStatus(II)V

    .line 305
    return-void
.end method

.method public onConnectionCreated(ILjava/util/ArrayList;)V
    .locals 1
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/ims/rcssip/V1_0/featureTagData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    .local p2, "deniedFTList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/rcssip/V1_0/featureTagData;>;"
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mSipDelegateEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    invoke-virtual {v0, p1, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->handleDelegateCreation(ILjava/util/ArrayList;)V

    .line 268
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

    .line 273
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mSipDelegateEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    invoke-virtual {v0, p1, p2}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->handleDelegateDestroyed(II)V

    .line 274
    return-void
.end method

.method public onEventReceived(I)V
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mSipDelegateEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->handleOnEventReceived(I)V

    .line 279
    return-void
.end method

.method public onEventReceived_1_1(Lvendor/qti/ims/rcssip/V1_1/eventData;)V
    .locals 1
    .param p1, "data"    # Lvendor/qti/ims/rcssip/V1_1/eventData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mSipDelegateEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->handleOnEventReceived_1_1(Lvendor/qti/ims/rcssip/V1_1/eventData;)V

    .line 284
    return-void
.end method

.method public onEventReceived_1_2(Lvendor/qti/ims/rcssip/V1_2/eventData;)V
    .locals 1
    .param p1, "data"    # Lvendor/qti/ims/rcssip/V1_2/eventData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mSipDelegateEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->handleOnEventReceived_1_2(Lvendor/qti/ims/rcssip/V1_2/eventData;)V

    .line 289
    return-void
.end method

.method public onFeatureTagStatusChange(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/ims/rcssip/V1_0/featureTagData;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/ims/rcssip/V1_0/featureTagData;>;"
    iget-object v0, p0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper$SipDelegateListener;->this$0:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;

    iget-object v0, v0, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateHidlWrapper;->mSipDelegateEventListener:Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;

    invoke-virtual {v0, p1}, Lvendor/qti/imsrcs/siptransport/hidl/SipDelegateWrapper$ImsSipDelegateEventListener;->handleFeatureTagStatusChange(Ljava/util/ArrayList;)V

    .line 312
    return-void
.end method
