.class final Lbac$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbac$a;->a(Ljava/lang/String;Lbla;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbac$a;


# direct methods
.method constructor <init>(Lbac$a;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lbac$a$1;->this$0:Lbac$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 94
    const-string v0, "ANR detected from Snapchat! See more details in notification"

    .line 95
    iget-object v1, p0, Lbac$a$1;->this$0:Lbac$a;

    iget-object v1, v1, Lbac$a;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/util/AlertDialogUtils;->a(Ljava/lang/String;Landroid/content/Context;I)V

    .line 96
    return-void
.end method
