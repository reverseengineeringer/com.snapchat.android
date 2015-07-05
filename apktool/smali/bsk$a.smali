.class public final Lbsk$a;
.super Ljava/lang/Object;

# interfaces
.implements Lbsj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbsk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lbrk;Lbrk;Ljava/lang/String;Landroid/content/Context;Lbqu;Lbtc;)Lbsi;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lbsk;

    invoke-direct {v0, p1, p2}, Lbsk;-><init>(Lbrk;Lbrk;)V

    return-object v0
.end method
