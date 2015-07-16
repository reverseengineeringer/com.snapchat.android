.class public final Lbdy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public newEvent:Lbcg;

.field public sourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lbcg;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lbdy;->sourceId:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lbdy;->newEvent:Lbcg;

    .line 16
    return-void
.end method
