.class public final Lbfs;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public code:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lbfs;->code:Ljava/lang/String;

    .line 13
    return-void
.end method
