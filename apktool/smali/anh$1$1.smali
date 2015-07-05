.class final Lanh$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laqa$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanh$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lanh$1;


# direct methods
.method constructor <init>(Lanh$1;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lanh$1$1;->a:Lanh$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lanh$1$1;->a:Lanh$1;

    iget-object v0, v0, Lanh$1;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 89
    return-void
.end method
