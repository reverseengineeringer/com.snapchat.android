.class public final Lbcy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public newEvent:Lbbg;

.field public sourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbbg;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lbcy;->sourceId:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lbcy;->newEvent:Lbbg;

    .line 16
    return-void
.end method
