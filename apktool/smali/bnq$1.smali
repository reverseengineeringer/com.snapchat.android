.class final Lbnq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbnx;)V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lbni;->k:Lbni;

    invoke-virtual {p1, v0}, Lbnx;->a(Lbni;)V

    .line 26
    return-void
.end method
