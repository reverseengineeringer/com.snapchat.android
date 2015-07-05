.class public final Lauv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final BRANDS_USING_EMULATOR_FLAG:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BRAND_NAME:Ljava/lang/String;

.field private static final DEV_FORCE_NAV_BAR:Ljava/lang/String; = "dev_force_show_navbar"

.field private static final EMULATOR_SETTING_NAV_BAR_HIDE:Ljava/lang/String; = "1"

.field private static final EMULATOR_SETTING_NAV_BAR_SHOW:Ljava/lang/String; = "0"

.field private static final LANDSCAPE_NAV_HEIGHT_RES_ID:Ljava/lang/String; = "navigation_bar_height_landscape"

.field private static final MIN_TABLET_WIDTH_DP:I = 0x258

.field private static final NAV_WIDTH_RES_ID:Ljava/lang/String; = "navigation_bar_width"

.field private static final PORTRAIT_NAV_HEIGHT_RES_ID:Ljava/lang/String; = "navigation_bar_height"

.field private static final SHOW_NAV_FLAG_RESOURCE_ID:Ljava/lang/String; = "config_showNavigationBar"

.field private static sEmulatorNavBarOverride:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mIsDockedBottomInLandscape:Z

.field final mLandscapeNavHeight:I

.field final mNavWidth:I

.field private final mPortraitNavHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 38
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sony"

    aput-object v1, v0, v2

    invoke-static {v0}, Lds;->a([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lauv;->BRANDS_USING_EMULATOR_FLAG:Ljava/util/Set;

    .line 39
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lauv;->BRAND_NAME:Ljava/lang/String;

    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    sget-object v0, Lauv;->BRANDS_USING_EMULATOR_FLAG:Ljava/util/Set;

    sget-object v1, Lauv;->BRAND_NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 65
    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 67
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "qemu.hw.mainkeys"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lauv;->sEmulatorNavBarOverride:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    sput-object v5, Lauv;->sEmulatorNavBarOverride:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, p1, v0}, Lauv;-><init>(Landroid/content/Context;Z)V

    .line 76
    return-void

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lauv;->mContext:Landroid/content/Context;

    .line 81
    iput-boolean p2, p0, Lauv;->mIsDockedBottomInLandscape:Z

    .line 82
    const-string v0, "navigation_bar_height"

    invoke-direct {p0, v0}, Lauv;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lauv;->mPortraitNavHeight:I

    .line 83
    const-string v0, "navigation_bar_height_landscape"

    invoke-direct {p0, v0}, Lauv;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lauv;->mLandscapeNavHeight:I

    .line 84
    const-string v0, "navigation_bar_width"

    invoke-direct {p0, v0}, Lauv;->a(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lauv;->mNavWidth:I

    .line 85
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lauv;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 182
    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 183
    if-lez v1, :cond_0

    .line 184
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 186
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 97
    iget-object v2, p0, Lauv;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 101
    iget-object v3, p0, Lauv;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "dev_force_show_navbar"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 102
    if-ne v3, v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return v0

    .line 108
    :cond_1
    sget-object v3, Lauv;->sEmulatorNavBarOverride:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 109
    sget-object v3, Lauv;->sEmulatorNavBarOverride:Ljava/lang/String;

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 111
    sget-object v3, Lauv;->sEmulatorNavBarOverride:Ljava/lang/String;

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 112
    goto :goto_0

    .line 117
    :cond_2
    const-string v3, "config_showNavigationBar"

    const-string v4, "bool"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 118
    if-lez v3, :cond_3

    .line 119
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0

    .line 124
    :cond_3
    const/4 v2, 0x3

    invoke-static {v2}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v2

    .line 125
    const/4 v3, 0x4

    invoke-static {v3}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v3

    .line 126
    if-nez v3, :cond_4

    if-nez v2, :cond_4

    iget-object v2, p0, Lauv;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p0}, Lauv;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 148
    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lauv;->mPortraitNavHeight:I

    goto :goto_0
.end method
