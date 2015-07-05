.class final Lbvx$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbvx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbvx;


# direct methods
.method constructor <init>(Lbvx;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lbvx$1;->a:Lbvx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lbvx$1;->a:Lbvx;

    invoke-virtual {v0}, Lbvx;->b()V

    .line 118
    return-void
.end method
