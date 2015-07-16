.class final Lbaf$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbaf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbaf;

.field final synthetic val$shakeReporter:Lbau;


# direct methods
.method constructor <init>(Lbaf;Lbau;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lbaf$4;->this$0:Lbaf;

    iput-object p2, p0, Lbaf$4;->val$shakeReporter:Lbau;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lbaf$4;->val$shakeReporter:Lbau;

    invoke-virtual {v0}, Lbau;->b()V

    .line 108
    return-void
.end method
