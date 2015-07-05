.class public final Landroid/support/v4/app/NotificationCompat$WearableExtender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/NotificationCompat$Extender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/NotificationCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WearableExtender"
.end annotation


# static fields
.field private static final DEFAULT_CONTENT_ICON_GRAVITY:I = 0x800005

.field private static final DEFAULT_FLAGS:I = 0x1

.field private static final DEFAULT_GRAVITY:I = 0x50

.field private static final EXTRA_WEARABLE_EXTENSIONS:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final FLAG_CONTENT_INTENT_AVAILABLE_OFFLINE:I = 0x1

.field private static final FLAG_HINT_AVOID_BACKGROUND_CLIPPING:I = 0x10

.field private static final FLAG_HINT_HIDE_ICON:I = 0x2

.field private static final FLAG_HINT_SHOW_BACKGROUND_ONLY:I = 0x4

.field private static final FLAG_START_SCROLL_BOTTOM:I = 0x8

.field private static final KEY_ACTIONS:Ljava/lang/String; = "actions"

.field private static final KEY_BACKGROUND:Ljava/lang/String; = "background"

.field private static final KEY_CONTENT_ACTION_INDEX:Ljava/lang/String; = "contentActionIndex"

.field private static final KEY_CONTENT_ICON:Ljava/lang/String; = "contentIcon"

.field private static final KEY_CONTENT_ICON_GRAVITY:Ljava/lang/String; = "contentIconGravity"

.field private static final KEY_CUSTOM_CONTENT_HEIGHT:Ljava/lang/String; = "customContentHeight"

.field private static final KEY_CUSTOM_SIZE_PRESET:Ljava/lang/String; = "customSizePreset"

.field private static final KEY_DISPLAY_INTENT:Ljava/lang/String; = "displayIntent"

.field private static final KEY_FLAGS:Ljava/lang/String; = "flags"

.field private static final KEY_GRAVITY:Ljava/lang/String; = "gravity"

.field private static final KEY_HINT_SCREEN_TIMEOUT:Ljava/lang/String; = "hintScreenTimeout"

.field private static final KEY_PAGES:Ljava/lang/String; = "pages"

.field public static final SCREEN_TIMEOUT_LONG:I = -0x1

.field public static final SCREEN_TIMEOUT_SHORT:I = 0x0

.field public static final SIZE_DEFAULT:I = 0x0

.field public static final SIZE_FULL_SCREEN:I = 0x5

.field public static final SIZE_LARGE:I = 0x4

.field public static final SIZE_MEDIUM:I = 0x3

.field public static final SIZE_SMALL:I = 0x2

.field public static final SIZE_XSMALL:I = 0x1

.field public static final UNSET_ACTION_INDEX:I = -0x1


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation
.end field

.field public mBackground:Landroid/graphics/Bitmap;

.field private mContentActionIndex:I

.field private mContentIcon:I

.field private mContentIconGravity:I

.field private mCustomContentHeight:I

.field private mCustomSizePreset:I

.field private mDisplayIntent:Landroid/app/PendingIntent;

.field private mFlags:I

.field private mGravity:I

.field private mHintScreenTimeout:I

.field private mPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 2303
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 2305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 2308
    const v0, 0x800005

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 2309
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 2310
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 2312
    const/16 v0, 0x50

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 2320
    return-void
.end method

.method private constructor <init>(Landroid/app/Notification;)V
    .locals 8

    .prologue
    const v7, 0x800005

    const/16 v6, 0x50

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 2322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 2303
    iput v5, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 2305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 2308
    iput v7, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 2309
    iput v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 2310
    iput v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 2312
    iput v6, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 2323
    invoke-static {p1}, Landroid/support/v4/app/NotificationCompat;->getExtras(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    .line 2324
    if-eqz v0, :cond_3

    const-string v1, "android.wearable.EXTENSIONS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object v1, v0

    .line 2326
    :goto_0
    if-eqz v1, :cond_2

    .line 2327
    # getter for: Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
    invoke-static {}, Landroid/support/v4/app/NotificationCompat;->access$200()Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    move-result-object v0

    const-string v2, "actions"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->getActionsFromParcelableArrayList(Ljava/util/ArrayList;)[Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    .line 2329
    if-eqz v0, :cond_0

    .line 2330
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2333
    :cond_0
    const-string v0, "flags"

    invoke-virtual {v1, v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 2334
    const-string v0, "displayIntent"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 2336
    const-string v0, "pages"

    invoke-static {v1, v0}, Landroid/support/v4/app/NotificationCompat;->access$500(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;

    move-result-object v0

    .line 2338
    if-eqz v0, :cond_1

    .line 2339
    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-static {v2, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 2342
    :cond_1
    const-string v0, "background"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 2343
    const-string v0, "contentIcon"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    .line 2344
    const-string v0, "contentIconGravity"

    invoke-virtual {v1, v0, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 2346
    const-string v0, "contentActionIndex"

    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 2348
    const-string v0, "customSizePreset"

    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 2350
    const-string v0, "customContentHeight"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    .line 2351
    const-string v0, "gravity"

    invoke-virtual {v1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 2352
    const-string v0, "hintScreenTimeout"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    .line 2354
    :cond_2
    return-void

    .line 2324
    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0
.end method

.method private addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 2441
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2442
    return-object p0
.end method

.method private addActions(Ljava/util/List;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;)",
            "Landroid/support/v4/app/NotificationCompat$WearableExtender;"
        }
    .end annotation

    .prologue
    .line 2458
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2459
    return-object p0
.end method

.method private addPage(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 2533
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2534
    return-object p0
.end method

.method private addPages(Ljava/util/List;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification;",
            ">;)",
            "Landroid/support/v4/app/NotificationCompat$WearableExtender;"
        }
    .end annotation

    .prologue
    .line 2548
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2549
    return-object p0
.end method

.method private clearActions()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 2468
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2469
    return-object p0
.end method

.method private clearPages()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 2558
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2559
    return-object p0
.end method

.method private clone()Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 3

    .prologue
    .line 2412
    new-instance v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    .line 2413
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    .line 2414
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 2415
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 2416
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    .line 2417
    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 2418
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    .line 2419
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 2420
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 2421
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 2422
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    .line 2423
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 2424
    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    .line 2425
    return-object v0
.end method

.method private getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/NotificationCompat$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2476
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getBackground()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 2596
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private getContentAction()I
    .locals 1

    .prologue
    .line 2669
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    return v0
.end method

.method private getContentIcon()I
    .locals 1

    .prologue
    .line 2611
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    return v0
.end method

.method private getContentIconGravity()I
    .locals 1

    .prologue
    .line 2632
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    return v0
.end method

.method private getContentIntentAvailableOffline()Z
    .locals 1

    .prologue
    .line 2779
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCustomContentHeight()I
    .locals 1

    .prologue
    .line 2738
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    return v0
.end method

.method private getCustomSizePreset()I
    .locals 1

    .prologue
    .line 2716
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    return v0
.end method

.method private getDisplayIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 2519
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method private getGravity()I
    .locals 1

    .prologue
    .line 2690
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    return v0
.end method

.method private getHintAvoidBackgroundClipping()Z
    .locals 1

    .prologue
    .line 2841
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getHintHideIcon()Z
    .locals 1

    .prologue
    .line 2798
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getHintScreenTimeout()I
    .locals 1

    .prologue
    .line 2863
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    return v0
.end method

.method private getHintShowBackgroundOnly()Z
    .locals 1

    .prologue
    .line 2817
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2570
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getStartScrollBottom()Z
    .locals 1

    .prologue
    .line 2757
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBackground(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .prologue
    .line 2583
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    .line 2584
    return-object p0
.end method

.method private setContentAction(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .prologue
    .line 2650
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    .line 2651
    return-object p0
.end method

.method private setContentIcon(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .prologue
    .line 2603
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    .line 2604
    return-object p0
.end method

.method private setContentIconGravity(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .prologue
    .line 2621
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    .line 2622
    return-object p0
.end method

.method private setContentIntentAvailableOffline(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 2768
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 2769
    return-object p0
.end method

.method private setCustomContentHeight(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .prologue
    .line 2727
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    .line 2728
    return-object p0
.end method

.method private setCustomSizePreset(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .prologue
    .line 2703
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    .line 2704
    return-object p0
.end method

.method private setDisplayIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .prologue
    .line 2510
    iput-object p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    .line 2511
    return-object p0
.end method

.method private setFlag(IZ)V
    .locals 2

    .prologue
    .line 2867
    if-eqz p2, :cond_0

    .line 2868
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    .line 2872
    :goto_0
    return-void

    .line 2870
    :cond_0
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    goto :goto_0
.end method

.method private setGravity(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .prologue
    .line 2679
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    .line 2680
    return-object p0
.end method

.method private setHintAvoidBackgroundClipping(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 2829
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 2830
    return-object p0
.end method

.method private setHintHideIcon(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 2788
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 2789
    return-object p0
.end method

.method private setHintScreenTimeout(I)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 0

    .prologue
    .line 2852
    iput p1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    .line 2853
    return-object p0
.end method

.method private setHintShowBackgroundOnly(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 2807
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 2808
    return-object p0
.end method

.method private setStartScrollBottom(Z)Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .locals 1

    .prologue
    .line 2747
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->setFlag(IZ)V

    .line 2748
    return-object p0
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 2204
    new-instance v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    iget v1, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    iput v1, v0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    return-object v0
.end method

.method public final extend(Landroid/support/v4/app/NotificationCompat$Builder;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 5

    .prologue
    .line 2363
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2365
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2366
    const-string v2, "actions"

    # getter for: Landroid/support/v4/app/NotificationCompat;->IMPL:Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;
    invoke-static {}, Landroid/support/v4/app/NotificationCompat;->access$200()Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;

    move-result-object v3

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/support/v4/app/NotificationCompat$Action;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v4/app/NotificationCompat$Action;

    invoke-interface {v3, v0}, Landroid/support/v4/app/NotificationCompat$NotificationCompatImpl;->getParcelableArrayListForActions([Landroid/support/v4/app/NotificationCompat$Action;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2370
    :cond_0
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 2371
    const-string v0, "flags"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mFlags:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2373
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 2374
    const-string v0, "displayIntent"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mDisplayIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2376
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2377
    const-string v2, "pages"

    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mPages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/app/Notification;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 2380
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 2381
    const-string v0, "background"

    iget-object v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2383
    :cond_4
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    if-eqz v0, :cond_5

    .line 2384
    const-string v0, "contentIcon"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIcon:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2386
    :cond_5
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    const v2, 0x800005

    if-eq v0, v2, :cond_6

    .line 2387
    const-string v0, "contentIconGravity"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentIconGravity:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2389
    :cond_6
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    .line 2390
    const-string v0, "contentActionIndex"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mContentActionIndex:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2393
    :cond_7
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    if-eqz v0, :cond_8

    .line 2394
    const-string v0, "customSizePreset"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomSizePreset:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2396
    :cond_8
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    if-eqz v0, :cond_9

    .line 2397
    const-string v0, "customContentHeight"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mCustomContentHeight:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2399
    :cond_9
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    const/16 v2, 0x50

    if-eq v0, v2, :cond_a

    .line 2400
    const-string v0, "gravity"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mGravity:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2402
    :cond_a
    iget v0, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    if-eqz v0, :cond_b

    .line 2403
    const-string v0, "hintScreenTimeout"

    iget v2, p0, Landroid/support/v4/app/NotificationCompat$WearableExtender;->mHintScreenTimeout:I

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2406
    :cond_b
    invoke-virtual {p1}, Landroid/support/v4/app/NotificationCompat$Builder;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2407
    return-object p1
.end method
