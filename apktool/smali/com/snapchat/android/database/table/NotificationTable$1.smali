.class final Lcom/snapchat/android/database/table/NotificationTable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/snapchat/android/database/table/NotificationTable;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/snapchat/android/database/table/NotificationTable$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/snapchat/android/database/table/NotificationTable$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/snapchat/android/database/table/NotificationTable$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/snapchat/android/database/table/NotificationTable$1;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/snapchat/android/database/table/NotificationTable$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/snapchat/android/database/table/NotificationTable$1;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/snapchat/android/database/table/NotificationTable;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/database/table/NotificationTable$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/snapchat/android/database/table/NotificationTable$1;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/snapchat/android/database/table/NotificationTable$1;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/database/table/NotificationTable;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
