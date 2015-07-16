.class final Lagf$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lagf;->a(ILcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;IIILaga$a;Ljava/util/Set;Lbgy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbgy;

.field final synthetic b:Lcom/snapchat/android/model/Friend;

.field final synthetic c:Lagf;


# direct methods
.method constructor <init>(Lagf;Lbgy;Lcom/snapchat/android/model/Friend;)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lagf$14;->c:Lagf;

    iput-object p2, p0, Lagf$14;->a:Lbgy;

    iput-object p3, p0, Lagf$14;->b:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 590
    iget-object v0, p0, Lagf$14;->a:Lbgy;

    iget-object v1, p0, Lagf$14;->c:Lagf;

    iget-object v1, v1, Lagf;->J:Landroid/content/Context;

    iget-object v2, p0, Lagf$14;->b:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v1, v2}, Lbgy;->a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;)V

    .line 591
    return-void
.end method
