.class public final synthetic Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

.field public final synthetic f$1:[B

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;[BZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda3;->f$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iput-object p2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda3;->f$1:[B

    iput-boolean p3, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda3;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda3;->f$0:Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;

    iget-object v1, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda3;->f$1:[B

    iget-boolean v2, p0, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl$$ExternalSyntheticLambda3;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lvendor/qti/imsrcs/config/ImsConfigServiceImpl;->lambda$notifyRcsAutoConfigurationReceived$2$vendor-qti-imsrcs-config-ImsConfigServiceImpl([BZ)V

    return-void
.end method
