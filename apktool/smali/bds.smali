.class public final Lbds;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public sourceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lbds;->sourceId:Ljava/lang/String;

    .line 14
    return-void
.end method
