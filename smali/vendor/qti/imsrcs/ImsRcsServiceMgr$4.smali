.class Lvendor/qti/imsrcs/ImsRcsServiceMgr$4;
.super Ljava/lang/Object;
.source "ImsRcsServiceMgr.java"

# interfaces
.implements Lvendor/qti/ims/factory/V2_0/IImsFactory$createOptionsServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvendor/qti/imsrcs/ImsRcsServiceMgr;->initializeImsOptionsService(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lvendor/qti/imsrcs/ImsRcsServiceMgr;I)V
    .locals 0
    .param p1, "this$0"    # Lvendor/qti/imsrcs/ImsRcsServiceMgr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 506
    iput-object p1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$4;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iput p2, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$4;->val$slotId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValues(ILvendor/qti/ims/rcsuce/V1_0/IOptionsService;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "iOptionsService"    # Lvendor/qti/ims/rcsuce/V1_0/IOptionsService;

    .line 509
    iget-object v0, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$4;->this$0:Lvendor/qti/imsrcs/ImsRcsServiceMgr;

    iget-object v0, v0, Lvendor/qti/imsrcs/ImsRcsServiceMgr;->mOptionsService:[Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;

    iget v1, p0, Lvendor/qti/imsrcs/ImsRcsServiceMgr$4;->val$slotId:I

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Lvendor/qti/imsrcs/uce/hidl/OptionsServiceWrapper;->setHidlOptionsService(Lvendor/qti/ims/rcsuce/V1_0/IOptionsService;)V

    .line 510
    return-void
.end method
