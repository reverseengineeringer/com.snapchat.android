.class final Lbor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbor;
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
.method public final a(Lboy;)V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lboj;->k:Lboj;

    invoke-virtual {p1, v0}, Lboy;->a(Lboj;)V

    .line 26
    return-void
.end method
