.class final Laff$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laff;->a(ILcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;Lcom/snapchat/android/model/Friend;IIILafa$a;Ljava/util/Set;Lbfy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbfy;

.field final synthetic b:Lcom/snapchat/android/model/Friend;

.field final synthetic c:Laff;


# direct methods
.method constructor <init>(Laff;Lbfy;Lcom/snapchat/android/model/Friend;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Laff$14;->c:Laff;

    iput-object p2, p0, Laff$14;->a:Lbfy;

    iput-object p3, p0, Laff$14;->b:Lcom/snapchat/android/model/Friend;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 565
    iget-object v0, p0, Laff$14;->a:Lbfy;

    iget-object v1, p0, Laff$14;->c:Laff;

    iget-object v1, v1, Laff;->J:Landroid/content/Context;

    iget-object v2, p0, Laff$14;->b:Lcom/snapchat/android/model/Friend;

    invoke-virtual {v0, v1, v2}, Lbfy;->a(Landroid/content/Context;Lcom/snapchat/android/model/Friend;)V

    .line 566
    return-void
.end method
