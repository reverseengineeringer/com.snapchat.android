.class public final Lbdu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final friendUsername:Ljava/lang/String;
    .annotation build Lchc;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lbdu;->friendUsername:Ljava/lang/String;

    .line 15
    return-void
.end method
