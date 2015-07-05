.class final Lcom/snapchat/android/SnapkidzSettingsActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/SnapkidzSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/snapchat/android/SnapkidzSettingsActivity;


# direct methods
.method constructor <init>(Lcom/snapchat/android/SnapkidzSettingsActivity;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/snapchat/android/SnapkidzSettingsActivity$2;->a:Lcom/snapchat/android/SnapkidzSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/snapchat/android/SnapkidzSettingsActivity$a;

    iget-object v1, p0, Lcom/snapchat/android/SnapkidzSettingsActivity$2;->a:Lcom/snapchat/android/SnapkidzSettingsActivity;

    invoke-direct {v0, v1}, Lcom/snapchat/android/SnapkidzSettingsActivity$a;-><init>(Lcom/snapchat/android/SnapkidzSettingsActivity;)V

    invoke-virtual {v0}, Lcom/snapchat/android/SnapkidzSettingsActivity$a;->show()V

    .line 33
    return-void
.end method
